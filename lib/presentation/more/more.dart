import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/presentation/common_components/header_scaffold.dart';
import 'package:athena/common_widgets/logo_header.dart';
import 'package:athena/presentation/more/settings/components/preference_switch.dart';
import 'package:athena/presentation/more/settings/components/preference_text.dart';
import 'package:athena/utils/locale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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

    return HeaderScaffold(
      body: ListView(
        children: [
          const LogoHeader(),
          PreferenceSwitch(
            title: context.locale.preferenceDownloadedOnly.title,
            subtitle: kIsWeb
                ? context.locale.preferenceDownloadedOnly.disabledWeb
                : context.locale.preferenceDownloadedOnly.summary,
            icon: Symbols.cloud_off,
            checked: preferences.downloadedOnly,
            onCheckedChanged: (checked) {
              preferenceNotifier.updateDownloadedOnly(checked);
            },
            enabled: !kIsWeb,
          ),
          PreferenceSwitch(
            title: context.locale.preferenceIncognitoMode.title,
            subtitle: context.locale.preferenceIncognitoMode.summary,
            icon: CupertinoIcons.eyeglasses,
            checked: preferences.incognitoMode,
            onCheckedChanged: (checked) {
              preferenceNotifier.updateIncognitoMode(checked);
            },
          ),
          const Divider(),
          PreferenceText(
            title: context.locale.labelDownloadQueue.title,
            subtitle:
                context.locale.labelDownloadQueue.downloading('Paused', 69),
            icon: Symbols.download,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: context.locale.labelCategories,
            icon: Symbols.label,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: context.locale.labelStatistics,
            icon: Symbols.query_stats,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: context.locale.labelStorage,
            icon: Symbols.storage,
            onPreferenceClick: () {},
          ),
          const Divider(),
          PreferenceText(
            title: context.locale.labelSettings,
            icon: Symbols.settings,
            onPreferenceClick: () {
              context.push('/settings');
            },
          ),
          PreferenceText(
            title: context.locale.labelAbout,
            icon: Symbols.info,
            onPreferenceClick: () {},
          ),
          PreferenceText(
            title: context.locale.labelHelp,
            icon: Symbols.help,
            onPreferenceClick: () {},
          ),
        ],
      ),
    );
  }
}
