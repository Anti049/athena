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
  String get appChannel => "Pre-Alpha";
  String get appVersion => "0.1.0";
  String get test => "¡Hola, mundo!";
  String get labelLibrary => "Biblioteca";
  String get labelUpdates => "Nueva";
  String get labelHistory => "Historial";
  String get labelBrowse => "Explorar";
  String get labelMore => "Más";
  String get librarySearchHint => "Buscar...";
  String get libraryCategoryDefault => "Predeterminado";
  LibraryOptionsFilterTranslations_es get libraryOptionsFilter =>
      LibraryOptionsFilterTranslations_es(this);
  LibraryOptionsSortTranslations_es get libraryOptionsSort =>
      LibraryOptionsSortTranslations_es(this);
  LibraryOptionsDisplayTranslations_es get libraryOptionsDisplay =>
      LibraryOptionsDisplayTranslations_es(this);
  LibraryOptionsCategoryTranslations_es get libraryOptionsCategory =>
      LibraryOptionsCategoryTranslations_es(this);
  LibraryMenuTranslations_es get libraryMenu =>
      LibraryMenuTranslations_es(this);
  PreferenceDownloadedOnlyTranslations_es get preferenceDownloadedOnly =>
      PreferenceDownloadedOnlyTranslations_es(this);
  PreferenceIncognitoModeTranslations_es get preferenceIncognitoMode =>
      PreferenceIncognitoModeTranslations_es(this);
  LabelDownloadQueueTranslations_es get labelDownloadQueue =>
      LabelDownloadQueueTranslations_es(this);
  String get labelCategories => "Categorías";
  String get labelStatistics => "Estadísticas";
  String get labelStorage => "Datos y Almacenamiento";
  String get labelSettings => "Ajustes";
  String get labelAbout => "Acerca de";
  String get labelHelp => "Ayuda";
  PreferenceCategoryAppearanceTranslations_es
      get preferenceCategoryAppearance =>
          PreferenceCategoryAppearanceTranslations_es(this);
  String get preferenceHeaderTheme => "Tema";
  PreferenceModeTranslations_es get preferenceMode =>
      PreferenceModeTranslations_es(this);
  PreferenceThemeTranslations_es get preferenceTheme =>
      PreferenceThemeTranslations_es(this);
  PreferenceAmoledDarkTranslations_es get preferenceAmoledDark =>
      PreferenceAmoledDarkTranslations_es(this);
  String get preferenceHeaderDisplay => "Mostrar";
  PreferenceLanguageTranslations_es get preferenceLanguage =>
      PreferenceLanguageTranslations_es(this);
  PreferenceCategoryLibraryTranslations_es get preferenceCategoryLibrary =>
      PreferenceCategoryLibraryTranslations_es(this);
  String get preferenceSectionCategories => "Categorías";
  PreferenceCategoriesTranslations_es get preferenceCategories =>
      PreferenceCategoriesTranslations_es(this);
  PreferenceCategoryReaderTranslations_es get preferenceCategoryReader =>
      PreferenceCategoryReaderTranslations_es(this);
  PreferenceCategoryDownloadsTranslations_es get preferenceCategoryDownloads =>
      PreferenceCategoryDownloadsTranslations_es(this);
  PreferenceCategoryTrackingTranslations_es get preferenceCategoryTracking =>
      PreferenceCategoryTrackingTranslations_es(this);
  PreferenceCategoryBrowseTranslations_es get preferenceCategoryBrowse =>
      PreferenceCategoryBrowseTranslations_es(this);
  PreferenceCategoryNotificationsTranslations_es
      get preferenceCategoryNotifications =>
          PreferenceCategoryNotificationsTranslations_es(this);
  PreferenceCategoryDataStorageTranslations_es
      get preferenceCategoryDataStorage =>
          PreferenceCategoryDataStorageTranslations_es(this);
  PreferenceCategorySecurityPrivacyTranslations_es
      get preferenceCategorySecurityPrivacy =>
          PreferenceCategorySecurityPrivacyTranslations_es(this);
  PreferenceCategoryAdvancedTranslations_es get preferenceCategoryAdvanced =>
      PreferenceCategoryAdvancedTranslations_es(this);
  PreferenceCategoryAboutTranslations_es get preferenceCategoryAbout =>
      PreferenceCategoryAboutTranslations_es(this);
  String get errorGeneric => "Se ha producido un error";
  String get errorTryAgain => "Inténtalo de nuevo";
  String get errorRouteNotFound => "Ruta no encontrada";
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
      case 'test':
        return test;
      case 'labelLibrary':
        return labelLibrary;
      case 'labelUpdates':
        return labelUpdates;
      case 'labelHistory':
        return labelHistory;
      case 'labelBrowse':
        return labelBrowse;
      case 'labelMore':
        return labelMore;
      case 'librarySearchHint':
        return librarySearchHint;
      case 'libraryCategoryDefault':
        return libraryCategoryDefault;
      case 'libraryOptionsFilter':
        return libraryOptionsFilter;
      case 'libraryOptionsSort':
        return libraryOptionsSort;
      case 'libraryOptionsDisplay':
        return libraryOptionsDisplay;
      case 'libraryOptionsCategory':
        return libraryOptionsCategory;
      case 'libraryMenu':
        return libraryMenu;
      case 'preferenceDownloadedOnly':
        return preferenceDownloadedOnly;
      case 'preferenceIncognitoMode':
        return preferenceIncognitoMode;
      case 'labelDownloadQueue':
        return labelDownloadQueue;
      case 'labelCategories':
        return labelCategories;
      case 'labelStatistics':
        return labelStatistics;
      case 'labelStorage':
        return labelStorage;
      case 'labelSettings':
        return labelSettings;
      case 'labelAbout':
        return labelAbout;
      case 'labelHelp':
        return labelHelp;
      case 'preferenceCategoryAppearance':
        return preferenceCategoryAppearance;
      case 'preferenceHeaderTheme':
        return preferenceHeaderTheme;
      case 'preferenceMode':
        return preferenceMode;
      case 'preferenceTheme':
        return preferenceTheme;
      case 'preferenceAmoledDark':
        return preferenceAmoledDark;
      case 'preferenceHeaderDisplay':
        return preferenceHeaderDisplay;
      case 'preferenceLanguage':
        return preferenceLanguage;
      case 'preferenceCategoryLibrary':
        return preferenceCategoryLibrary;
      case 'preferenceSectionCategories':
        return preferenceSectionCategories;
      case 'preferenceCategories':
        return preferenceCategories;
      case 'preferenceCategoryReader':
        return preferenceCategoryReader;
      case 'preferenceCategoryDownloads':
        return preferenceCategoryDownloads;
      case 'preferenceCategoryTracking':
        return preferenceCategoryTracking;
      case 'preferenceCategoryBrowse':
        return preferenceCategoryBrowse;
      case 'preferenceCategoryNotifications':
        return preferenceCategoryNotifications;
      case 'preferenceCategoryDataStorage':
        return preferenceCategoryDataStorage;
      case 'preferenceCategorySecurityPrivacy':
        return preferenceCategorySecurityPrivacy;
      case 'preferenceCategoryAdvanced':
        return preferenceCategoryAdvanced;
      case 'preferenceCategoryAbout':
        return preferenceCategoryAbout;
      case 'errorGeneric':
        return errorGeneric;
      case 'errorTryAgain':
        return errorTryAgain;
      case 'errorRouteNotFound':
        return errorRouteNotFound;
      default:
        return super[key];
    }
  }
}

class LibraryOptionsFilterTranslations_es
    extends LibraryOptionsFilterTranslations {
  final Translations_es _parent;
  const LibraryOptionsFilterTranslations_es(this._parent) : super(_parent);
  String get header => "Filtrar";
  String get downloaded => "Descargado";
  String get unread => "No leído";
  String get started => "Empezado";
  String get completed => "Completado";
  String get bookmarked => "Marcado";
  String get updated => "Actualizado";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'downloaded':
        return downloaded;
      case 'unread':
        return unread;
      case 'started':
        return started;
      case 'completed':
        return completed;
      case 'bookmarked':
        return bookmarked;
      case 'updated':
        return updated;
      default:
        return super[key];
    }
  }
}

class LibraryOptionsSortTranslations_es extends LibraryOptionsSortTranslations {
  final Translations_es _parent;
  const LibraryOptionsSortTranslations_es(this._parent) : super(_parent);
  String get header => "Ordenar";
  String get alphabetically => "Alfabéticamente";
  String get totalChapters => "Capítulos Totales";
  String get lastRead => "Última Lectura";
  String get lastUpdated => "Última Actualización";
  String get unreadChapters => "Capítulos No Leídos";
  String get latestChapter => "Último Capítulo";
  String get fetchedDate => "Fecha de Descarga";
  String get addedDate => "Fecha de Añadido";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'alphabetically':
        return alphabetically;
      case 'totalChapters':
        return totalChapters;
      case 'lastRead':
        return lastRead;
      case 'lastUpdated':
        return lastUpdated;
      case 'unreadChapters':
        return unreadChapters;
      case 'latestChapter':
        return latestChapter;
      case 'fetchedDate':
        return fetchedDate;
      case 'addedDate':
        return addedDate;
      default:
        return super[key];
    }
  }
}

class LibraryOptionsDisplayTranslations_es
    extends LibraryOptionsDisplayTranslations {
  final Translations_es _parent;
  const LibraryOptionsDisplayTranslations_es(this._parent) : super(_parent);
  String get header => "Mostrar";
  DisplayModeLibraryOptionsDisplayTranslations_es get displayMode =>
      DisplayModeLibraryOptionsDisplayTranslations_es(this);
  OverlayLibraryOptionsDisplayTranslations_es get overlay =>
      OverlayLibraryOptionsDisplayTranslations_es(this);
  TabsLibraryOptionsDisplayTranslations_es get tabs =>
      TabsLibraryOptionsDisplayTranslations_es(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'displayMode':
        return displayMode;
      case 'overlay':
        return overlay;
      case 'tabs':
        return tabs;
      default:
        return super[key];
    }
  }
}

class DisplayModeLibraryOptionsDisplayTranslations_es
    extends DisplayModeLibraryOptionsDisplayTranslations {
  final LibraryOptionsDisplayTranslations_es _parent;
  const DisplayModeLibraryOptionsDisplayTranslations_es(this._parent)
      : super(_parent);
  String get subheader => "Modo de Visualización";
  String get compactGrid => "Cuadrícula Compacta";
  String get comfortableGrid => "Cuadrícula Cómoda";
  String get coverOnlyGrid => "Cuadrícula Solo Portadas";
  String get list => "Lista";
  String gridSize(int size) =>
      "${_plural(size, zero: 'Predeterminado', other: '$size por fila')}";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subheader':
        return subheader;
      case 'compactGrid':
        return compactGrid;
      case 'comfortableGrid':
        return comfortableGrid;
      case 'coverOnlyGrid':
        return coverOnlyGrid;
      case 'list':
        return list;
      case 'gridSize':
        return gridSize;
      default:
        return super[key];
    }
  }
}

class OverlayLibraryOptionsDisplayTranslations_es
    extends OverlayLibraryOptionsDisplayTranslations {
  final LibraryOptionsDisplayTranslations_es _parent;
  const OverlayLibraryOptionsDisplayTranslations_es(this._parent)
      : super(_parent);
  String get subheader => "Superposición";
  String get downloadedChapters => "Capítulos Descargados";
  String get unreadChapters => "Capítulos No Leídos";
  String get language => "Idioma";
  String get continueReading => "Botón de Continuar Leyendo";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subheader':
        return subheader;
      case 'downloadedChapters':
        return downloadedChapters;
      case 'unreadChapters':
        return unreadChapters;
      case 'language':
        return language;
      case 'continueReading':
        return continueReading;
      default:
        return super[key];
    }
  }
}

class TabsLibraryOptionsDisplayTranslations_es
    extends TabsLibraryOptionsDisplayTranslations {
  final LibraryOptionsDisplayTranslations_es _parent;
  const TabsLibraryOptionsDisplayTranslations_es(this._parent) : super(_parent);
  String get subheader => "Pestañas";
  String get category => "Mostrar Pestañas de Categoría";
  String get number => "Mostrar Número de Trabajos";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subheader':
        return subheader;
      case 'category':
        return category;
      case 'number':
        return number;
      default:
        return super[key];
    }
  }
}

class LibraryOptionsCategoryTranslations_es
    extends LibraryOptionsCategoryTranslations {
  final Translations_es _parent;
  const LibraryOptionsCategoryTranslations_es(this._parent) : super(_parent);
  String get header => "Categoría";
  String get all => "Todos";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'all':
        return all;
      default:
        return super[key];
    }
  }
}

class LibraryMenuTranslations_es extends LibraryMenuTranslations {
  final Translations_es _parent;
  const LibraryMenuTranslations_es(this._parent) : super(_parent);
  String get updateLibrary => "Actualizar Biblioteca";
  String get updateCategory => "Actualizar Categoría";
  String get randomWork => "Abrir Relato Aleatorio";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'updateLibrary':
        return updateLibrary;
      case 'updateCategory':
        return updateCategory;
      case 'randomWork':
        return randomWork;
      default:
        return super[key];
    }
  }
}

class PreferenceDownloadedOnlyTranslations_es
    extends PreferenceDownloadedOnlyTranslations {
  final Translations_es _parent;
  const PreferenceDownloadedOnlyTranslations_es(this._parent) : super(_parent);
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

class PreferenceIncognitoModeTranslations_es
    extends PreferenceIncognitoModeTranslations {
  final Translations_es _parent;
  const PreferenceIncognitoModeTranslations_es(this._parent) : super(_parent);
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

class LabelDownloadQueueTranslations_es extends LabelDownloadQueueTranslations {
  final Translations_es _parent;
  const LabelDownloadQueueTranslations_es(this._parent) : super(_parent);
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

class PreferenceCategoryAppearanceTranslations_es
    extends PreferenceCategoryAppearanceTranslations {
  final Translations_es _parent;
  const PreferenceCategoryAppearanceTranslations_es(this._parent)
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

class PreferenceModeTranslations_es extends PreferenceModeTranslations {
  final Translations_es _parent;
  const PreferenceModeTranslations_es(this._parent) : super(_parent);
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

class PreferenceThemeTranslations_es extends PreferenceThemeTranslations {
  final Translations_es _parent;
  const PreferenceThemeTranslations_es(this._parent) : super(_parent);
  String get base => "Predeterminado";
  String get custom => "Personalizado";
  String get dynamic => "Dinámico";
  String get greenApple => "Manzana Verde";
  String get lavender => "Lavanda";
  String get midnightDusk => "Anochecer Medianoche";
  String get nord => "Nórdico";
  String get strawberry => "Fresa";
  String get tako => "Tako";
  String get tealTurquoise => "Turquesa y Verde Azulado";
  String get tidalWave => "Ola de Marea";
  String get yinYang => "Yin y Yang";
  String get yotsuba => "Yotsuba";
  String get silverWolf => "Lobo Plateado";
  String get dracula => "Drácula PRO";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'base':
        return base;
      case 'custom':
        return custom;
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
      default:
        return super[key];
    }
  }
}

class PreferenceAmoledDarkTranslations_es
    extends PreferenceAmoledDarkTranslations {
  final Translations_es _parent;
  const PreferenceAmoledDarkTranslations_es(this._parent) : super(_parent);
  String get title => "Oscuro AMOLED";
  String get summary => "Utilice fondos negros auténticos";
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

class PreferenceLanguageTranslations_es extends PreferenceLanguageTranslations {
  final Translations_es _parent;
  const PreferenceLanguageTranslations_es(this._parent) : super(_parent);
  String get title => "Idioma de la aplicación";
  String get summary => "Seleccionar el idioma de la aplicación";
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

class PreferenceCategoryLibraryTranslations_es
    extends PreferenceCategoryLibraryTranslations {
  final Translations_es _parent;
  const PreferenceCategoryLibraryTranslations_es(this._parent) : super(_parent);
  String get title => "Biblioteca";
  String get summary =>
      "Categorías, actualización global, deslizamiento de capítulo";
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

class PreferenceCategoriesTranslations_es
    extends PreferenceCategoriesTranslations {
  final Translations_es _parent;
  const PreferenceCategoriesTranslations_es(this._parent) : super(_parent);
  String get title => "Editar categorías";
  String summary(int num) =>
      "_plural(num, zero: '', one: '$num categoría', other: '$num categorías')";
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

class PreferenceCategoryReaderTranslations_es
    extends PreferenceCategoryReaderTranslations {
  final Translations_es _parent;
  const PreferenceCategoryReaderTranslations_es(this._parent) : super(_parent);
  String get title => "Lector";
  String get summary => "Modo de lectura, visualización, navegación";
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

class PreferenceCategoryDownloadsTranslations_es
    extends PreferenceCategoryDownloadsTranslations {
  final Translations_es _parent;
  const PreferenceCategoryDownloadsTranslations_es(this._parent)
      : super(_parent);
  String get title => "Descargas";
  String get summary => "Descarga automática, descarga anticipada";
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

class PreferenceCategoryTrackingTranslations_es
    extends PreferenceCategoryTrackingTranslations {
  final Translations_es _parent;
  const PreferenceCategoryTrackingTranslations_es(this._parent)
      : super(_parent);
  String get title => "Seguimiento";
  String get summary => "Sincronización de progreso, sincronización mejorada";
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

class PreferenceCategoryBrowseTranslations_es
    extends PreferenceCategoryBrowseTranslations {
  final Translations_es _parent;
  const PreferenceCategoryBrowseTranslations_es(this._parent) : super(_parent);
  String get title => "Explorar";
  String get summary => "Fuentes, extensiones, búsqueda global";
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

class PreferenceCategoryNotificationsTranslations_es
    extends PreferenceCategoryNotificationsTranslations {
  final Translations_es _parent;
  const PreferenceCategoryNotificationsTranslations_es(this._parent)
      : super(_parent);
  String get title => "Notificaciones";
  String get summary => "Descarga completa, actualización disponible";
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

class PreferenceCategoryDataStorageTranslations_es
    extends PreferenceCategoryDataStorageTranslations {
  final Translations_es _parent;
  const PreferenceCategoryDataStorageTranslations_es(this._parent)
      : super(_parent);
  String get title => "Datos y almacenamiento";
  String get summary => "Copias de seguridad, espacio de almacenamiento";
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

class PreferenceCategorySecurityPrivacyTranslations_es
    extends PreferenceCategorySecurityPrivacyTranslations {
  final Translations_es _parent;
  const PreferenceCategorySecurityPrivacyTranslations_es(this._parent)
      : super(_parent);
  String get title => "Seguridad y privacidad";
  String get summary => "Bloqueo de aplicaciones, pantalla segura";
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

class PreferenceCategoryAdvancedTranslations_es
    extends PreferenceCategoryAdvancedTranslations {
  final Translations_es _parent;
  const PreferenceCategoryAdvancedTranslations_es(this._parent)
      : super(_parent);
  String get title => "Avanzado";
  String get summary =>
      "Opciones para desarrolladores, funciones experimentales";
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

class PreferenceCategoryAboutTranslations_es
    extends PreferenceCategoryAboutTranslations {
  final Translations_es _parent;
  const PreferenceCategoryAboutTranslations_es(this._parent) : super(_parent);
  String get title => "Acerca de";
  String get summary =>
      "${_parent.appTitle} ${_parent.appChannel} v${_parent.appVersion}";
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
