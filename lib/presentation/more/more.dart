import 'package:athena/core/navigation/routing.dart';
import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/l10n/l10n.dart';
import 'package:athena/presentation/more/components/logo_header.dart';
import 'package:athena/presentation/more/settings/components/preference_switch.dart';
import 'package:athena/presentation/more/settings/components/preference_text.dart';
import 'package:athena/presentation/more/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
          PreferenceSwitch(
            title: context.locale.preference_downloaded_only.title,
            subtitle: context.locale.preference_downloaded_only.summary,
            icon: Symbols.cloud_off,
            checked: preferences.downloadedOnly,
            onCheckedChanged: (checked) {
              preferenceNotifier.updateDownloadedOnly(checked);
            },
          ),
          PreferenceSwitch(
            title: context.locale.preference_incognito_mode.title,
            subtitle: context.locale.preference_incognito_mode.summary,
            icon: CupertinoIcons.eyeglasses,
            checked: preferences.incognitoMode,
            onCheckedChanged: (checked) {
              preferenceNotifier.updateIncognitoMode(checked);
            },
          ),
          const Divider(),
          PreferenceText(
            title: context.locale.label_download_queue.title,
            subtitle:
                context.locale.label_download_queue.downloading('Paused', 69),
            icon: Symbols.download,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: context.locale.label_categories,
            icon: Symbols.label,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: context.locale.label_statistics,
            icon: Symbols.query_stats,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: context.locale.label_storage,
            icon: Symbols.storage,
            onPreferenceClick: () {},
          ),
          const Divider(),
          PreferenceText(
            title: context.locale.label_settings,
            icon: Symbols.settings,
            onPreferenceClick: () {
              context.push('/settings');
            },
          ),
          PreferenceText(
            title: context.locale.label_about,
            icon: Symbols.info,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: context.locale.label_help,
            icon: Symbols.help,
            onPreferenceClick: () {},
          ),
        ],
      ),
    );
  }
}
