import 'package:athena/localization/translations.dart';
import 'package:athena/localization/translations.i69n.dart';
import 'package:flutter/material.dart';

extension LocaleExtension on BuildContext {
  Translations get locale => AthenaLocalization.of(this);
}
