import 'package:athena/common_widgets/banner_scaffold.dart';
import 'package:athena/common_widgets/logo_header.dart';
// import 'package:athena/features/more/domain/more_tab_model.dart';
import 'package:athena/features/settings/providers/base_preferences.dart';
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

    // final state = ref.watch(moreTabModelProvider);

    return BannerScaffold(
      body: /*state.when(
        loading: () => const LoadingScreen(),
        error: (error, stackTrace) {
          debugPrintStack(stackTrace: stackTrace);
          return Center(child: Text(error.toString()));
        },
        data: (data) {
          return*/
          ListView(
        children: [
          const LogoHeader(),
          SwitchPreferenceWidget(
            title: context.locale.more.downloadedOnly.title,
            subtitle:
                context.locale.more.downloadedOnly.subtitle(isWeb: kIsWeb),
            icon: Symbols.cloud_off,
            checked: preferences.downloadedOnly().get(),
            onCheckedChanged: (checked) {
              preferences.downloadedOnly().set(checked);
            },
          ),
          SwitchPreferenceWidget(
            title: context.locale.more.incognitoMode.title,
            subtitle: context.locale.more.incognitoMode.subtitle,
            icon: CupertinoIcons.eyeglasses,
            checked: preferences.incognitoMode().get(),
            onCheckedChanged: (checked) {
              preferences.incognitoMode().set(checked);
            },
          ),
          const Divider(),
          TextPreferenceWidget(
            title: context.locale.more.downloadQueue.title,
            subtitle: context.locale.more.downloadQueue.subtitle('Paused', 69),
            icon: Symbols.download,
            onPreferenceClick: () {},
          ),
          TextPreferenceWidget(
            title: context.locale.more.categories,
            icon: Symbols.label,
            onPreferenceClick: () {},
          ),
          TextPreferenceWidget(
            title: context.locale.more.statistics,
            icon: Symbols.query_stats,
            onPreferenceClick: () {},
          ),
          TextPreferenceWidget(
            title: context.locale.page.settings.dataStorage,
            icon: Symbols.storage,
            onPreferenceClick: () {
              router.push(const StorageSettingsRoute());
            },
          ),
          const Divider(),
          TextPreferenceWidget(
            title: context.locale.page.settings.title,
            icon: Symbols.settings,
            onPreferenceClick: () {
              router.push(const SettingsRoute());
            },
          ),
          TextPreferenceWidget(
            title: context.locale.page.settings.about,
            icon: Symbols.info,
            onPreferenceClick: () {
              router.push(const AboutRoute());
            },
          ),
          TextPreferenceWidget(
            title: context.locale.page.settings.help,
            icon: Symbols.help,
            onPreferenceClick: () {},
          ),
        ],
      ),
      // },
      // ),
    );
  }
}
