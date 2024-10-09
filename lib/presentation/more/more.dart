import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/l10n/l10n.dart';
import 'package:athena/presentation/more/components/logo_header.dart';
import 'package:athena/presentation/more/settings/components/preference_segmented_button.dart';
import 'package:athena/presentation/more/settings/components/preference_switch.dart';
import 'package:athena/presentation/more/settings/components/preference_text.dart';
import 'package:athena/presentation/more/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class MoreTab extends ConsumerWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferenceNotifier = ref.watch(preferencesProvider.notifier);
    final preferences = ref.watch(preferencesProvider);

    return Scaffold(
      body: ListView(
        children: [
          const LogoHeader(),
          PreferenceSegmentedButton(
            value: preferences.themeMode,
            options: const [
              PreferenceSegment(value: ThemeMode.system, label: 'System'),
              PreferenceSegment(value: ThemeMode.light, label: 'Light'),
              PreferenceSegment(value: ThemeMode.dark, label: 'Dark'),
            ],
            onChanged: (newThemeMode) {
              ref
                  .read(preferencesProvider.notifier)
                  .updateThemeMode(newThemeMode as ThemeMode);
            },
          ),
          PreferenceSwitch(
            title: context.locale.label_downloaded_only,
            subtitle: context.locale.downloaded_only_summary,
            icon: Symbols.cloud_off,
            checked: preferences.downloadedOnly,
            onCheckedChanged: (checked) {
              preferenceNotifier.updateDownloadedOnly(checked);
            },
          ),
          PreferenceSwitch(
            title: context.locale.label_incognito_mode,
            subtitle: context.locale.incognito_mode_summary,
            icon: CupertinoIcons.eyeglasses,
            checked: preferences.incognitoMode,
            onCheckedChanged: (checked) {
              preferenceNotifier.updateIncognitoMode(checked);
            },
          ),
          const Divider(),
          PreferenceText(
            title: 'Download Queue',
            icon: Symbols.download,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: 'Categories',
            icon: Symbols.label,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: 'Statistics',
            icon: Symbols.query_stats,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: 'Data and Storage',
            icon: Symbols.storage,
            onPreferenceClick: () {},
          ),
          const Divider(),
          PreferenceText(
            title: 'Settings',
            icon: Symbols.settings,
            onPreferenceClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SettingsScreen();
                  },
                ),
              );
            },
          ),
          PreferenceText(
            title: 'About',
            icon: Symbols.info,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: 'Help',
            icon: Symbols.help,
            onPreferenceClick: () {},
          ),
        ],
      ),
    );
  }
}
