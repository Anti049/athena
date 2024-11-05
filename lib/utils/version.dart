import 'package:athena/flavors.dart';
import 'package:change_case/change_case.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

extension VersionInfo on BuildContext {
  String get appName {
    return PackageInfo.fromPlatform().then((value) {
      return value.appName;
    }).toString(); // Placeholder while loading
  }

  String get version {
    return PackageInfo.fromPlatform().then((value) {
      return value.version;
    }).toString(); // Placeholder while loading
  }

  String get channel {
    return F.title.toCapitalCase();
  }
}
