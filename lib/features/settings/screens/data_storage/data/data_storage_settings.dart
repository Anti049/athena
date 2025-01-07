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
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:athena/utils/platform.dart';

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

  Future<Permission> getPermission(BuildContext context) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (context.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      if (androidInfo.version.sdkInt >= 33) {
        return Permission.manageExternalStorage;
      }
    }
    return Permission.storage;
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(dataStoragePreferencesProvider);

    return [
      TextSetting(
        title: context.locale.settings.dataStorage.storageLocation.title,
        subtitle: context.locale.settings.dataStorage.storageLocation.subtitle(
          preferences.storageLocation().get(),
        ),
        preference: preferences.storageLocation(),
        icon: Symbols.folder,
        onClick: () async {
          final permission = await getPermission(context);
          var status = await permission.status;
          if (!status.isGranted) {
            status = await permission.request();
          }
          if (status.isGranted) {
            final result = await FilePicker.platform.getDirectoryPath();
            if (result != null) {
              preferences.storageLocation().set(result);
            }
          }
        },
      ),
    ];
  }
}
