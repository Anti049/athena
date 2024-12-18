import 'package:athena/features/banners/presentation/banner_scaffold.dart';
import 'package:athena/features/category/repositories/category_repository.dart';
import 'package:athena/features/category/repositories/category_repository_impl.dart';
import 'package:athena/features/notifications/controllers/notification_controller.dart';
import 'package:athena/features/notifications/providers/notification_manager.dart';
import 'package:athena/features/settings/providers/appearance_preferences.dart';
import 'package:athena/features/theme/models/base_theme.dart';
import 'package:athena/features/theme/models/custom_colors.dart';
import 'package:athena/features/theme/models/theme_pair.dart';
import 'package:athena/features/theme/repositories/prebuilt_themes.dart';
import 'package:athena/features/works/repositories/work_repository.dart';
import 'package:athena/features/works/repositories/work_repository_local.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/routing/router.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:system_theme/system_theme.dart';
import 'package:upgrader/upgrader.dart';

Future<void> main() async {
  // Ensure plugin services are initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive
  await Hive.initFlutter();
  // Open the preferences box
  await Hive.openBox('preferences');
  // Initialize localization
  await EasyLocalization.ensureInitialized();
  // await WebLateSdk.initialize(
  //   token: 'wlp_GgAYLo8LrRR0v1fShNKgTvPFR05Om3hCYGeq',
  //   host: 'https://translate.codeberg.org/api/',
  //   projectName: 'Athena',
  //   componentName: 'Translations',
  //   defaultLanguage: 'en',
  // );
  // Load system accent color
  final supported = defaultTargetPlatform.supportsAccentColor;
  if (supported) {
    SystemTheme.fallbackColor = Colors.deepPurple;
    try {
      await SystemTheme.accentColor.load();
    } catch (e) {
      debugPrint('Failed to load system accent color: $e');
    }
  }

  // Run the app
  runApp(
    ProviderScope(
      overrides: [
        workRepositoryProvider
            .overrideWith((ref) => ref.watch(workRepositoryLocalProvider)),
        categoryRepositoryProvider
            .overrideWith((ref) => ref.watch(categoryRepositoryImplProvider)),
      ],
      // App
      child: const AthenaApp(),
    ),
  );
}

class AthenaApp extends ConsumerStatefulWidget {
  const AthenaApp({super.key});

  @override
  ConsumerState<AthenaApp> createState() => _AthenaAppState();
}

class _AthenaAppState extends ConsumerState<AthenaApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: NotificationController.onActionReceivedMethod,
      onDismissActionReceivedMethod:
          NotificationController.onDismissActionReceivedMethod,
      onNotificationCreatedMethod:
          NotificationController.onNotificationCreatedMethod,
      onNotificationDisplayedMethod:
          NotificationController.onNotificationDisplayedMethod,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get the preferences
    final appearance = ref.watch(appearancePreferencesProvider);
    final notificationManager = ref.watch(notificationManagerProvider);

    notificationManager.initialize();

    // Handle theming with system accent color
    return SystemThemeBuilder(
      builder: (context, accent) {
        // Theme name
        String themeName = appearance.themeName().get();

        // Custom colors
        CustomColors extendedLightColors = const CustomColors(
          info: Color(0xFF006877),
          success: Color(0xFF006e2b),
          warning: Color(0xFF87520d),
          alert: Color(0xFF5c6300),
        );
        CustomColors extendedDarkColors = const CustomColors(
          info: Color(0xFF84e2f6),
          success: Color(0xFF46f274),
          warning: Color(0xFFfab468),
          alert: Color(0xFFd3dc71),
        );

        // Update dynamic theme (for visual selection)
        final dynamicColor = accent.accent;
        prebuiltThemes['dynamic'] = BaseTheme.fromColors(
          'dynamic',
          ThemeCategory.base,
          dynamicColor,
        );

        // If not using dynamic, verify theme exists
        if (themeName != 'dynamic' && !prebuiltThemes.containsKey(themeName)) {
          themeName = 'system';
        }
        if (themeName == 'dynamic' && prebuiltThemes['dynamic'] == null) {
          themeName = 'system';
        }

        // Generate the theme pair
        final activeTheme = ThemePair.create(
          themeName,
          prebuiltThemes[themeName]!.getColorScheme(
            Brightness.light,
            contrast: appearance.contrastLevel().get(),
          ),
          prebuiltThemes[themeName]!.getColorScheme(
            Brightness.dark,
            contrast: appearance.contrastLevel().get(),
          ),
          extendedLight: extendedLightColors,
          extendedDark: extendedDarkColors,
          amoled: appearance.pureBlack().get(),
        );

        // Handle brightness for system icons
        final appBrightness =
            calculateBrightness(context, appearance.themeMode().get());
        final iconBrightness = appBrightness;
        SystemChrome.setEnabledSystemUIMode(
          SystemUiMode.edgeToEdge,
        );

        Color trueTransparent = Colors.transparent.withOpacity(0.002);
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor:
                trueTransparent, // Manually set opacity just above 0 to get true transparency
            statusBarIconBrightness: iconBrightness,
            systemStatusBarContrastEnforced: true,
            systemNavigationBarColor:
                trueTransparent, // Manually set opacity just above 0 to get true transparency
            systemNavigationBarIconBrightness: iconBrightness,
            systemNavigationBarContrastEnforced: true,
          ),
        );

        // Return the app
        return MaterialApp.router(
          // General settings
          title: 'Athena',
          debugShowCheckedModeBanner: false,
          // Theme settings
          themeMode: appearance.themeMode().get(),
          theme: activeTheme.light,
          darkTheme: activeTheme.dark,
          // Locale settings
          locale: appearance.appLanguage().get(),
          supportedLocales: AthenaLocalization.supportedLocales,
          localizationsDelegates: const [
            LocaleNamesLocalizationsDelegate(),
            AthenaLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // Responsive layout builder
          builder: (context, child) {
            return ResponsiveBreakpoints.builder(
              child: UpgradeAlert(
                child: BannerScaffold(
                  child: child!,
                ),
              ),
              breakpoints: [
                const Breakpoint(start: 0, end: 600, name: COMPACT),
                const Breakpoint(start: 600, end: 839, name: MEDIUM),
                const Breakpoint(start: 840, end: 1199, name: EXPANDED),
                const Breakpoint(start: 1200, end: 1599, name: LARGE),
                const Breakpoint(
                    start: 1600, end: double.infinity, name: EXTRA_LARGE),
              ],
            );
          },
          // Routing settings
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
