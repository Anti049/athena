import 'package:athena/common/presentation/padded_app_bar.dart';
import 'package:athena/features/banners/presentation/components/banner_scaffold.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/presentation/components/group_header.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class SettingScaffold extends StatelessWidget {
  const SettingScaffold({
    super.key,
    this.appBar,
    required this.settingsProvider,
  });

  final PreferredSizeWidget? appBar;
  final List<ISetting> Function() settingsProvider;

  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBar: appBar,
      body: ListView(
        children: settingsProvider()
            .mapIndexed(
              (index, setting) {
                if (setting is SettingGroup) {
                  return <Widget>[
                    SettingGroupHeader(
                      title: setting.title,
                      icon: setting.icon,
                    ),
                    ...setting.settings.map((setting) {
                      return buildSettingWidget(context, setting as Setting);
                    }),
                  ];
                }
                return [
                  buildSettingWidget(context, setting as Setting),
                ];
              },
            )
            .flattened
            .toList(),
      ),
    );
  }
}

class SearchableSettingScaffold extends StatelessWidget {
  const SearchableSettingScaffold({
    super.key,
    required this.title,
    this.actions = const [],
    required this.settingsProvider,
  });

  final String title;
  final List<Widget> actions;
  final List<ISetting> Function() settingsProvider;

  static String? highlightKey;

  @override
  Widget build(BuildContext context) {
    return SettingScaffold(
      appBar: PaddedAppBar(
        title: Text(title),
        actions: actions,
      ),
      settingsProvider: settingsProvider,
    );
  }
}
