import 'package:athena/i69n/translations.i69n.dart';
import 'package:athena/i69n/translations_es.i69n.dart';
import 'package:flutter/material.dart';

const _supportedLocales = ['en', 'es'];

class AthenaLocalization {
  const AthenaLocalization(this.translations);

  final Translations translations;

  static final _translations = <String, Translations Function()>{
    'en': () => const Translations(),
    'es': () => const Translations_es(),
  };

  static const LocalizationsDelegate<AthenaLocalization> delegate =
      _AthenaLocalizationDelegate();

  static final List<Locale> supportedLocales =
      _supportedLocales.map((x) => Locale(x)).toList();

  static Future<AthenaLocalization> load(Locale locale) =>
      Future.value(AthenaLocalization(_translations[locale.languageCode]!()));

  static Translations of(BuildContext context) =>
      Localizations.of<AthenaLocalization>(context, AthenaLocalization)!
          .translations;
}

class _AthenaLocalizationDelegate
    extends LocalizationsDelegate<AthenaLocalization> {
  const _AthenaLocalizationDelegate();

  @override
  bool isSupported(Locale locale) =>
      _supportedLocales.contains(locale.languageCode);

  @override
  Future<AthenaLocalization> load(Locale locale) =>
      AthenaLocalization.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AthenaLocalization> old) => false;
}
