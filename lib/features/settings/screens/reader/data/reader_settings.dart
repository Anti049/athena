import 'package:athena/features/settings/models/searchable_settings.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/screens/reader/reader_screen.dart';
import 'package:athena/features/settings/screens/reader/providers/reader_provider.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class IReaderSettings extends ISearchableSettings {
  const IReaderSettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.pages.settings.reader.title;
  }

  @override
  Widget getWidget() {
    return const ReaderSettingsScreen();
  }

  @override
  PageRouteInfo getRoute() {
    return const ReaderSettingsRoute();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(readerPreferencesProvider);

    return [];
  }
}
