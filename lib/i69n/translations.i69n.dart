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
  String get test => "Hello, World!";
  String get label_library => "Library";
  String get label_updates => "Updates";
  String get label_history => "History";
  String get label_browse => "Browse";
  String get label_more => "More";
  Preference_downloaded_onlyTranslations get preference_downloaded_only =>
      Preference_downloaded_onlyTranslations(this);
  Preference_incognito_modeTranslations get preference_incognito_mode =>
      Preference_incognito_modeTranslations(this);
  Label_download_queueTranslations get label_download_queue =>
      Label_download_queueTranslations(this);
  String get label_categories => "Categories";
  String get label_statistics => "Statistics";
  String get label_storage => "Data and Storage";
  String get label_settings => "Settings";
  String get label_about => "About";
  String get label_help => "Help";
  Preference_category_appearanceTranslations
      get preference_category_appearance =>
          Preference_category_appearanceTranslations(this);
  Preference_themeTranslations get preference_theme =>
      Preference_themeTranslations(this);
  String get theme_default => "Default";
  String get theme_dynamic => "Dynamic";
  String get theme_green_apple => "Green Apple";
  String get theme_lavender => "Lavender";
  String get theme_midnight_dusk => "Midnight Dusk";
  String get theme_nord => "Nord";
  String get theme_strawberry => "Strawberry";
  String get theme_tako => "Tako";
  String get theme_teal_turquoise => "Teal & Turquoise";
  String get theme_tidal_wave => "Tidal Wave";
  String get theme_yin_yang => "Yin & Yang";
  String get theme_yotsuba => "Yotsuba";
  String get theme_silver_wolf => "Silver Wolf";
  String get theme_dracula => "Dracula PRO";
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
      case 'test':
        return test;
      case 'label_library':
        return label_library;
      case 'label_updates':
        return label_updates;
      case 'label_history':
        return label_history;
      case 'label_browse':
        return label_browse;
      case 'label_more':
        return label_more;
      case 'preference_downloaded_only':
        return preference_downloaded_only;
      case 'preference_incognito_mode':
        return preference_incognito_mode;
      case 'label_download_queue':
        return label_download_queue;
      case 'label_categories':
        return label_categories;
      case 'label_statistics':
        return label_statistics;
      case 'label_storage':
        return label_storage;
      case 'label_settings':
        return label_settings;
      case 'label_about':
        return label_about;
      case 'label_help':
        return label_help;
      case 'preference_category_appearance':
        return preference_category_appearance;
      case 'preference_theme':
        return preference_theme;
      case 'theme_default':
        return theme_default;
      case 'theme_dynamic':
        return theme_dynamic;
      case 'theme_green_apple':
        return theme_green_apple;
      case 'theme_lavender':
        return theme_lavender;
      case 'theme_midnight_dusk':
        return theme_midnight_dusk;
      case 'theme_nord':
        return theme_nord;
      case 'theme_strawberry':
        return theme_strawberry;
      case 'theme_tako':
        return theme_tako;
      case 'theme_teal_turquoise':
        return theme_teal_turquoise;
      case 'theme_tidal_wave':
        return theme_tidal_wave;
      case 'theme_yin_yang':
        return theme_yin_yang;
      case 'theme_yotsuba':
        return theme_yotsuba;
      case 'theme_silver_wolf':
        return theme_silver_wolf;
      case 'theme_dracula':
        return theme_dracula;
      default:
        return key;
    }
  }
}

class Preference_downloaded_onlyTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const Preference_downloaded_onlyTranslations(this._parent);
  String get title => "Downloaded Only";
  String get summary => "Only show downloaded works";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'summary':
        return summary;
      default:
        return key;
    }
  }
}

class Preference_incognito_modeTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const Preference_incognito_modeTranslations(this._parent);
  String get title => "Incognito Mode";
  String get summary => "Don't save history or search queries";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'summary':
        return summary;
      default:
        return key;
    }
  }
}

class Label_download_queueTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const Label_download_queueTranslations(this._parent);
  String get title => "Download Queue";
  String downloading(String status, int count) => "$status: $count remaining";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'downloading':
        return downloading;
      default:
        return key;
    }
  }
}

class Preference_category_appearanceTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const Preference_category_appearanceTranslations(this._parent);
  String get title => "Appearance";
  String get summary => "Theme, date and time format";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'summary':
        return summary;
      default:
        return key;
    }
  }
}

class Preference_themeTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const Preference_themeTranslations(this._parent);
  String get system => "System";
  String get dark => "Dark";
  String get light => "Light";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'system':
        return system;
      case 'dark':
        return dark;
      case 'light':
        return light;
      default:
        return key;
    }
  }
}
