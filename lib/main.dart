import 'package:athena/features/more/settings/appearance/providers/appearance_provider.dart';
import 'package:athena/features/more/settings/appearance/theme/data/prebuilt_themes.dart';
import 'package:athena/features/more/settings/appearance/theme/model/theme.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/router/router.dart';
import 'package:athena/utils/enums.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:system_theme/system_theme.dart';

Future<void> main() async {
  // Ensure plugin services are initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive
  await Hive.initFlutter();
  // Open the preferences box
  await Hive.openBox('preferences');
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

  runApp(
    ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  MainApp({super.key});

  final _athenaRouter = AthenaRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(appearancePreferencesProvider);

    return SystemThemeBuilder(
      builder: (context, accent) {
        // Create/update dynamic theme for selection
        addTheme(
          AppTheme.fromColors(
            'dynamic',
            ThemeCategory.system,
            accent.accent,
          ),
        );

        // Add flex color schemes
        for (var scheme in FlexColor.schemesList) {
          addTheme(
            AppTheme.fromFlexScheme(
              scheme.name,
              ThemeCategory.flex,
              light: scheme.light,
              dark: scheme.dark,
            ),
          );
        }

        // If active theme doesn't exist, switch to system theme
        if (!prebuiltThemes.containsKey(preferences.themeName().get())) {
          preferences.themeName().set('system');
        }

        // Get theme name for readability and debugging
        final themeName = preferences.themeName().get();

        // Get blend level
        final blendLevel = preferences.blendLevel().get().ceil();

        // Return app
        return MaterialApp.router(
          // General settings
          title: 'Athena',
          debugShowCheckedModeBanner: false,
          // Theme settings
          themeMode: preferences.themeMode().get(),
          theme: prebuiltThemes[themeName]!.light(
            blendLevel: blendLevel,
          ),
          darkTheme: prebuiltThemes[themeName]!.dark(
            pureBlack: preferences.pureBlack().get(),
            blendLevel: preferences.pureBlack().get() ? 0 : blendLevel,
          ),
          // Locale settings
          locale: preferences.appLanguage().get(),
          supportedLocales: AthenaLocalization.supportedLocales,
          localizationsDelegates: const [
            LocaleNamesLocalizationsDelegate(),
            AthenaLocalization.delegate,
          ],
          // Responsive layout settings
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
          routerConfig: _athenaRouter.config(),
        );
      },
    );
  }
}
