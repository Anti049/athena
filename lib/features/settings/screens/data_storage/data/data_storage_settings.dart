import 'package:athena/features/settings/models/searchable_settings.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/screens/data_storage/data_storage_screen.dart';
import 'package:athena/features/settings/screens/data_storage/providers/data_storage_provider.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class IDataStorageSettings extends ISearchableSettings {
  const IDataStorageSettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.pages.settings.dataStorage.title;
  }

  @override
  Widget getWidget() {
    return const DataStorageSettingsScreen();
  }

  @override
  PageRouteInfo getRoute() {
    return const DataStorageSettingsRoute();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(dataStoragePreferencesProvider);

    return [];
  }
}
