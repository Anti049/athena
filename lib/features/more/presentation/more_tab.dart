import 'package:athena/common_widgets/banner_scaffold.dart';
import 'package:athena/common_widgets/empty.dart';
import 'package:athena/common_widgets/logo_header.dart';
import 'package:athena/features/settings/application/base_preferences.dart';
import 'package:athena/features/settings/application/common_preference_store.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/features/settings/presentation/components/switch_preference_widget.dart';
import 'package:athena/features/settings/presentation/components/text_preference_widget.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class MoreTab extends ConsumerWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(basePreferencesProvider);
    final router = AutoRouter.of(context);

    return BannerScaffold(
      body: ListView(
        children: [
          const LogoHeader(),
          SwitchPreferenceWidget(
            title: context.locale.preferenceDownloadedOnly.title,
            subtitle: kIsWeb
                ? context.locale.preferenceDownloadedOnly.disabledWeb
                : context.locale.preferenceDownloadedOnly.summary,
            icon: Symbols.cloud_off,
            checked: preferences.downloadedOnly().get(),
            onCheckedChanged: (checked) {
              preferences.downloadedOnly().set(checked);
            },
          ),
          SwitchPreferenceWidget(
            title: context.locale.preferenceIncognitoMode.title,
            subtitle: context.locale.preferenceIncognitoMode.summary,
            icon: CupertinoIcons.eyeglasses,
            checked: preferences.incognitoMode().get(),
            onCheckedChanged: (checked) {
              preferences.incognitoMode().set(checked);
            },
          ),
          const Divider(),
          TextPreferenceWidget(
            title: context.locale.labelDownloadQueue.title,
            subtitle:
                context.locale.labelDownloadQueue.downloading('Paused', 69),
            icon: Symbols.download,
            onPreferenceClick: () {},
          ),
          TextPreferenceWidget(
            title: context.locale.labelCategories,
            icon: Symbols.label,
            onPreferenceClick: () {},
          ),
          TextPreferenceWidget(
            title: context.locale.labelStatistics,
            icon: Symbols.query_stats,
            onPreferenceClick: () {},
          ),
          TextPreferenceWidget(
            title: context.locale.labelStorage,
            icon: Symbols.storage,
            onPreferenceClick: () {},
          ),
          const Divider(),
          TextPreferenceWidget(
            title: context.locale.labelSettings,
            icon: Symbols.settings,
            onPreferenceClick: () {
              router.push(const SettingsRoute());
            },
          ),
          TextPreferenceWidget(
            title: context.locale.labelAbout,
            icon: Symbols.info,
            onPreferenceClick: () {
              router.push(const AboutRoute());
            },
          ),
          TextPreferenceWidget(
            title: context.locale.labelHelp,
            icon: Symbols.help,
            onPreferenceClick: () {},
          ),
        ],
      ),
    );
  }
}
