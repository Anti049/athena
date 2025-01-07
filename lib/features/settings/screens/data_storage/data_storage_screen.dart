import 'package:athena/features/settings/screens/data_storage/data/data_storage_settings.dart';
import 'package:athena/features/settings/presentation/components/setting_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DataStorageSettingsScreen extends ConsumerWidget {
  const DataStorageSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const settings = IDataStorageSettings();
    return SearchableSettingScaffold(
      title: settings.getTitle(context),
      settingsProvider: () => settings.getSettings(context, ref),
    );
  }
}
