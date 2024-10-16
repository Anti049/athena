import 'package:athena/i69n/translations.dart';
import 'package:athena/i69n/translations.i69n.dart';
import 'package:flutter/material.dart';

extension LocaleExtension on BuildContext {
  Translations get locale => AthenaLocalization.of(this);
}
