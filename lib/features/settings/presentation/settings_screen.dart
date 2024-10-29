import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:change_case/change_case.dart';

@RoutePage()
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  static const String routeName = 'settings';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  String appName = '';
  String channel = '';
  String version = '';

  @override
  void initState() {
    PackageInfo.fromPlatform().then(
      (packageInfo) {
        setState(() {
          appName = packageInfo.appName;
          channel = appFlavor?.toCapitalCase() ??
              'Unknown'; // Use appFlavor from flavors.dart
          version = packageInfo.version;
        });
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appearance = ref.watch(appearancePreferencesProvider);
    final router = AutoRouter.of(context);
    final items = [
      // Appearance
      TextPreference(
        title: context.locale.preferenceCategoryAppearance.header,
        subtitle: context.locale.preferenceCategoryAppearance.summary,
        icon: Icons.palette,
        onClick: () => router.push(const SettingsAppearanceRoute()),
      ),
      // Library
      TextPreference(
        title: context.locale.preferenceCategoryLibrary.header,
        subtitle: context.locale.preferenceCategoryLibrary.summary,
        icon: Icons.book,
        onClick: () => /*router.push(const SettingsLibraryRoute())*/ {},
      ),
      // Reader
      TextPreference(
        title: context.locale.preferenceCategoryReader.header,
        subtitle: context.locale.preferenceCategoryReader.summary,
        icon: Icons.chrome_reader_mode,
        onClick: () => /*router.push(const SettingsReaderRoute())*/ {},
      ),
      // Downloads
      TextPreference(
        title: context.locale.preferenceCategoryDownloads.header,
        subtitle: context.locale.preferenceCategoryDownloads.summary,
        icon: Icons.file_download,
        onClick: () => /*router.push(const SettingsDownloadsRoute())*/ {},
      ),
      // Tracking
      TextPreference(
        title: context.locale.preferenceCategoryTracking.header,
        subtitle: context.locale.preferenceCategoryTracking.summary,
        icon: Icons.sync,
        onClick: () => /*router.push(const SettingsTrackingRoute())*/ {},
      ),
      // Browse
      TextPreference(
        title: context.locale.preferenceCategoryBrowse.header,
        subtitle: context.locale.preferenceCategoryBrowse.summary,
        icon: Icons.explore,
        onClick: () => /*router.push(const SettingsBrowseRoute())*/ {},
      ),
      // Notifications
      TextPreference(
        title: context.locale.preferenceCategoryNotifications.header,
        subtitle: context.locale.preferenceCategoryNotifications.summary,
        icon: Icons.notifications,
        onClick: () => /*router.push(const SettingsNotificationsRoute())*/ {},
      ),
      // Data & Storage
      TextPreference(
        title: context.locale.preferenceCategoryDataStorage.header,
        subtitle: context.locale.preferenceCategoryDataStorage.summary,
        icon: Icons.storage,
        onClick: () => /*router.push(const SettingsDataStorageRoute())*/ {},
      ),
      // Security & Privacy
      TextPreference(
        title: context.locale.preferenceCategorySecurityPrivacy.header,
        subtitle: context.locale.preferenceCategorySecurityPrivacy.summary,
        icon: Icons.security,
        onClick: () => /*router.push(const SettingsSecurityPrivacyRoute())*/ {},
      ),
      // Advanced
      TextPreference(
        title: context.locale.preferenceCategoryAdvanced.header,
        subtitle: context.locale.preferenceCategoryAdvanced.summary,
        icon: Icons.settings,
        onClick: () => /*router.push(const SettingsAdvancedRoute())*/ {},
      ),
      // About
      TextPreference(
        title: context.locale.preferenceCategoryAbout,
        subtitle: context.locale.preferenceVersion.summary(
          channel,
          version,
          DateFormat(appearance.dateFormat().get().format)
              .format(DateTime.now()),
        ),
        icon: Icons.info,
        onClick: () => router.push(const AboutRoute()),
      ),
    ];

    return PreferenceScaffold(
      title: context.locale.labelSettings,
      itemsProvider: () => items,
    );
  }
}
