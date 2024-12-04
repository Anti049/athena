import 'package:athena/common_widgets/logo_header.dart';
import 'package:athena/features/more/providers/more_preferences.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/presentation/setting_scaffold.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class MoreTab extends ConsumerWidget {
  const MoreTab({super.key});

  static const String routeName = 'more';

  List<Setting> getMoreSettings(BuildContext context, WidgetRef ref) {
    final router = AutoRouter.of(context);
    final preferences = ref.watch(morePreferencesProvider);

    return [
      CustomSetting(
        title: 'Logo',
        widget: const LogoHeader(),
      ),
      SwitchSetting(
        title: context.locale.more.downloadedOnly.title,
        subtitle: context.locale.more.downloadedOnly.subtitle,
        icon: Symbols.cloud_off,
        preference: preferences.downloadedOnly(),
      ),
      SwitchSetting(
        title: context.locale.more.incognitoMode.title,
        subtitle: context.locale.more.incognitoMode.subtitle,
        icon: CupertinoIcons.eyeglasses,
        preference: preferences.incognitoMode(),
      ),
      CustomSetting(
        title: 'Divider',
        widget: const Divider(),
      ),
      TextSetting(
        title: context.locale.pages.more.downloadQueue.title,
        subtitle:
            context.locale.pages.more.downloadQueue.subtitle('No downloads', 0),
        icon: Symbols.download,
        onClick: () {
          router.push(const DownloadQueueRoute());
        },
      ),
      TextSetting(
        title: context.locale.pages.more.categories.title,
        icon: Symbols.label,
        onClick: () {
          router.push(const EditCategoriesRoute());
        },
      ),
      TextSetting(
        title: context.locale.pages.more.statistics.title,
        icon: Symbols.query_stats,
        onClick: () {
          router.push(const StatisticsRoute());
        },
      ),
      TextSetting(
        title: context.locale.pages.settings.dataStorage.title,
        icon: Symbols.storage,
        onClick: () {
          router.push(const DataStorageSettingsRoute());
        },
      ),
      CustomSetting(
        title: 'Divider',
        widget: const Divider(),
      ),
      TextSetting(
        title: context.locale.pages.settings.title,
        icon: Symbols.settings,
        onClick: () {
          router.push(const SettingsRoute());
        },
      ),
      TextSetting(
        title: context.locale.pages.more.about.title,
        icon: Symbols.info,
        onClick: () {
          router.push(const SettingsRoute());
        },
      ),
      TextSetting(
        title: context.locale.pages.more.help.title,
        icon: Symbols.help,
        onClick: () {
          router.push(const SettingsRoute());
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SettingScaffold(
      settingsProvider: () => getMoreSettings(context, ref),
    );
  }
}
