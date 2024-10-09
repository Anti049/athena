import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/presentation/home/home.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:athena/presentation/theme/prebuilt_themes.dart';
import 'package:athena/presentation/theme/prebuilt_themes/base_theme.dart';
import 'package:athena/presentation/theme/theme_pair.dart';
import 'package:athena/utils/brightness.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  // Ensure plugin services are initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive
  await Hive.initFlutter();
  // Open the preferences box
  await Hive.openBox('preferences');
  // Run the app
  runApp(
    const ProviderScope(
      // App
      child: AthenaApp(),
    ),
  );
}

class AthenaApp extends ConsumerWidget {
  const AthenaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the preferences
    // final preferencesNotifier = ref.watch(preferencesProvider.notifier);
    final preferences = ref.watch(preferencesProvider);

    // Handle theming
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      // Theme name
      String themeName = preferences.themeName;

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
      if (lightDynamic != null && darkDynamic != null) {
        prebuiltThemes['dynamic'] = BaseTheme.fromDynamic(
          lightDynamicScheme: lightDynamic,
          darkDynamicScheme: darkDynamic,
        );
      }

      // Check if using dynamic theme
      bool useDynamicTheme =
          lightDynamic != null && darkDynamic != null && themeName == 'dynamic';

      // If not using dynamic, verify theme exists
      if (themeName != 'dynamic' && !prebuiltThemes.containsKey(themeName)) {
        // preferencesNotifier.updateThemeName('default');
        themeName = 'default';
      }
      if (preferences.themeName == 'dynamic' && !useDynamicTheme) {
        themeName = 'default';
      }

      // Generate the theme pair
      final activeTheme = ThemePair.create(
        themeName,
        useDynamicTheme
            ? lightDynamic
            : prebuiltThemes[themeName]!.getColorScheme(
                Brightness.light,
                contrast: preferences.contrastLevel,
              ),
        useDynamicTheme
            ? darkDynamic
            : prebuiltThemes[themeName]!.getColorScheme(
                Brightness.dark,
                contrast: preferences.contrastLevel,
              ),
        extendedLight: extendedLightColors,
        extendedDark: extendedDarkColors,
        amoled: preferences.pureBlack,
      );

      final appBrightness = calculateBrightness(context, preferences.themeMode);
      final iconBrightness = getInverseBrightness(appBrightness);
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.edgeToEdge,
      );
      Color trueTransparent = Colors.transparent.withOpacity(0.002);
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: trueTransparent,
          statusBarIconBrightness: iconBrightness,
          systemNavigationBarColor:
              trueTransparent, // Manually set opacity just above 0 to get true transparency
          systemNavigationBarIconBrightness: iconBrightness,
        ),
      );

      // Return the app
      return MaterialApp(
        // General settings
        title: 'Athena',
        debugShowCheckedModeBanner: false,
        // Theme settings
        themeMode: preferences.themeMode,
        theme: activeTheme.light,
        darkTheme: activeTheme.dark,
        // Locale settings
        locale: preferences.locale,
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        // Responsive layout builder
        builder: (context, child) {
          return ResponsiveBreakpoints.builder(
            child: child!,
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
        home: const HomeScreen(),
      );
    });
  }
}
