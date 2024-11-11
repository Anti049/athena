import 'package:athena/features/storage/providers/storage_preferences.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/searchable_settings.dart';
import 'package:athena/utils/locale.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:athena/features/settings/providers/preference.dart'
    as pref_data;

class IStorageSettings extends ISearchableSettings {
  const IStorageSettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.preferenceCategoryDataStorage.header;
  }

  @override
  Widget getWidget() => const StorageSettingsScreen();

  @override
  PageRouteInfo getRoute() => const StorageSettingsRoute();

  void selectStorageFolder(pref_data.Preference pref) async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
    if (selectedDirectory != null) {
      pref.set(selectedDirectory);
    }
  }

  Future<Permission> getPermission() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt >= 33) {
      return Permission.manageExternalStorage;
    }
    return Permission.storage;
  }

  @override
  List<Preference> getPreferences(BuildContext context, WidgetRef ref) {
    final storagePreferences = ref.watch(storagePreferencesProvider);

    return [
      TextPreference(
        title: context.locale.preferenceStorageLocation,
        subtitle: storagePreferences.storageLocation().get(),
        icon: Icons.storage,
        pref: storagePreferences.storageLocation(),
        onClick: () async {
          // First, check for permission
          final permission = await getPermission();
          var status = await permission.status;
          if (!status.isGranted) {
            status = await permission.request();
          }
          if (status.isGranted) {
            // Permission is granted
            selectStorageFolder(storagePreferences.storageLocation());
          } else {
            // Permission is denied
            return;
          }
        },
      ),
    ];
  }
}

@RoutePage()
class StorageSettingsScreen extends ConsumerWidget {
  const StorageSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const settings = IStorageSettings();
    return SearchableSettings(
      title: settings.getTitle(context),
      preferences: () => settings.getPreferences(context, ref),
    );
  }
}
