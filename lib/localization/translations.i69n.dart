// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;

String get _languageCode => 'en';
String get _localeName => 'en';

String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class Translations implements i69n.I69nMessageBundle {
  const Translations();
  String get appTitle => "Athena";
  String get appDescription =>
      "Athena is an all-in-one application for downloading, reading, and listening to fanfiction.";
  String get appChannel => "Pre-Alpha";
  String get appVersion => "0.1.0";
  String get library => "Library";
  String get updates => "Updates";
  String get history => "History";
  String get browse => "Browse";
  String get sources => "Sources";
  String get extensions => "Extensions";
  String get migrate => "Migrate";
  String get more => "More";
  String get settings => "Settings";
  String get appearance => "Appearance";
  ThemesTranslations get themes => ThemesTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'appTitle':
        return appTitle;
      case 'appDescription':
        return appDescription;
      case 'appChannel':
        return appChannel;
      case 'appVersion':
        return appVersion;
      case 'library':
        return library;
      case 'updates':
        return updates;
      case 'history':
        return history;
      case 'browse':
        return browse;
      case 'sources':
        return sources;
      case 'extensions':
        return extensions;
      case 'migrate':
        return migrate;
      case 'more':
        return more;
      case 'settings':
        return settings;
      case 'appearance':
        return appearance;
      case 'themes':
        return themes;
      default:
        return key;
    }
  }
}

class ThemesTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const ThemesTranslations(this._parent);
  String get title => "Themes";
  String get system => "System";
  String get dynamic => "Dynamic";
  String get greenApple => "Green Apple";
  String get lavender => "Lavender";
  String get midnightDusk => "Midnight Dusk";
  String get nord => "Nord";
  String get strawberry => "Strawberry";
  String get tako => "Tako";
  String get tealTurquoise => "Teal & Turquoise";
  String get tidalWave => "Tidal Wave";
  String get yinYang => "Yin & Yang";
  String get yotsuba => "Yotsuba";
  String get silverWolf => "Silver Wolf";
  String get dracula => "Dracula PRO";
  String get gaziter => "Gaziter";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'system':
        return system;
      case 'dynamic':
        return dynamic;
      case 'greenApple':
        return greenApple;
      case 'lavender':
        return lavender;
      case 'midnightDusk':
        return midnightDusk;
      case 'nord':
        return nord;
      case 'strawberry':
        return strawberry;
      case 'tako':
        return tako;
      case 'tealTurquoise':
        return tealTurquoise;
      case 'tidalWave':
        return tidalWave;
      case 'yinYang':
        return yinYang;
      case 'yotsuba':
        return yotsuba;
      case 'silverWolf':
        return silverWolf;
      case 'dracula':
        return dracula;
      case 'gaziter':
        return gaziter;
      default:
        return key;
    }
  }
}
