// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;
import 'translations.i69n.dart';

String get _languageCode => 'es';
String get _localeName => 'es';

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

class Translations_es extends Translations {
  const Translations_es();
  String get appTitle => "Athena";
  String get appDescription =>
      "Athena es una aplicación todo en uno para descargar, leer y escuchar fanfiction.";
  String get test => "¡Hola, Mundo!";
  String get label_library => "Biblioteca";
  String get label_updates => "Nuevas";
  String get label_history => "Historial";
  String get label_browse => "Explorar";
  String get label_more => "Más";
  Preference_downloaded_onlyTranslations_es get preference_downloaded_only =>
      Preference_downloaded_onlyTranslations_es(this);
  Preference_incognito_modeTranslations_es get preference_incognito_mode =>
      Preference_incognito_modeTranslations_es(this);
  Label_download_queueTranslations_es get label_download_queue =>
      Label_download_queueTranslations_es(this);
  String get label_categories => "Categorías";
  String get label_statistics => "Estadísticas";
  String get label_storage => "Datos y Almacenamiento";
  String get label_settings => "Ajustes";
  String get label_about => "Acerca de";
  String get label_help => "Ayuda";
  Preference_category_appearanceTranslations_es
      get preference_category_appearance =>
          Preference_category_appearanceTranslations_es(this);
  Preference_themeTranslations_es get preference_theme =>
      Preference_themeTranslations_es(this);
  String get theme_default => "Básica";
  String get theme_dynamic => "Dinámico";
  String get theme_green_apple => "Manzana Verde";
  String get theme_lavender => "Lavanda";
  String get theme_midnight_dusk => "Anochecer";
  String get theme_nord => "Nord";
  String get theme_strawberry => "Fresa";
  String get theme_tako => "Tako";
  String get theme_teal_turquoise => "Verde Azulado y Turquesa";
  String get theme_tidal_wave => "Ola de Marea";
  String get theme_yin_yang => "Yin y Yang";
  String get theme_yotsuba => "Yotsuba";
  String get theme_silver_wolf => "Lobo Plateado";
  String get theme_dracula => "Drácula PRO";
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
        return super[key];
    }
  }
}

class Preference_downloaded_onlyTranslations_es
    extends Preference_downloaded_onlyTranslations {
  final Translations_es _parent;
  const Preference_downloaded_onlyTranslations_es(this._parent)
      : super(_parent);
  String get title => "Solo Descargados";
  String get summary => "Mostrar solo trabajos descargados";
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
        return super[key];
    }
  }
}

class Preference_incognito_modeTranslations_es
    extends Preference_incognito_modeTranslations {
  final Translations_es _parent;
  const Preference_incognito_modeTranslations_es(this._parent) : super(_parent);
  String get title => "Modo Incógnito";
  String get summary => "No guardar historial ni consultas de búsqueda";
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
        return super[key];
    }
  }
}

class Label_download_queueTranslations_es
    extends Label_download_queueTranslations {
  final Translations_es _parent;
  const Label_download_queueTranslations_es(this._parent) : super(_parent);
  String get title => "Cola de Descarga";
  String downloading(String status, int count) => "$status: $count restantes";
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
        return super[key];
    }
  }
}

class Preference_category_appearanceTranslations_es
    extends Preference_category_appearanceTranslations {
  final Translations_es _parent;
  const Preference_category_appearanceTranslations_es(this._parent)
      : super(_parent);
  String get title => "Apariencia";
  String get summary => "Tema, formato de fecha y hora";
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
        return super[key];
    }
  }
}

class Preference_themeTranslations_es extends Preference_themeTranslations {
  final Translations_es _parent;
  const Preference_themeTranslations_es(this._parent) : super(_parent);
  String get system => "Sistema";
  String get dark => "Oscuro";
  String get light => "Claro";
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
        return super[key];
    }
  }
}
