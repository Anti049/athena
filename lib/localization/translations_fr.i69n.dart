// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;
import 'translations.i69n.dart';

String get _languageCode => 'fr';
String get _localeName => 'fr';

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

class Translations_fr extends Translations {
  const Translations_fr();
  String get appTitle => "Athena";
  String get appDescription =>
      "Athena est une application tout-en-un pour télécharger, lire et écouter des fanfictions.";
  String get appChannel => "Pre-Alpha";
  String get appVersion => "0.1.0";
  String get test => "Bonjour, le monde!";
  String get labelLibrary => "Bibliothèque";
  String get labelUpdates => "Mises à jour";
  String get labelHistory => "Historique";
  String get labelBrowse => "Parcourir";
  String get labelMore => "Plus";
  String get librarySearchHint => "Rechercher...";
  String get libraryCategoryDefault => "Défaut";
  LibraryOptionsFilterTranslations_fr get libraryOptionsFilter =>
      LibraryOptionsFilterTranslations_fr(this);
  LibraryOptionsSortTranslations_fr get libraryOptionsSort =>
      LibraryOptionsSortTranslations_fr(this);
  LibraryOptionsDisplayTranslations_fr get libraryOptionsDisplay =>
      LibraryOptionsDisplayTranslations_fr(this);
  LibraryOptionsCategoryTranslations_fr get libraryOptionsCategory =>
      LibraryOptionsCategoryTranslations_fr(this);
  LibraryMenuTranslations_fr get libraryMenu =>
      LibraryMenuTranslations_fr(this);
  LibrarySelectionMenuTranslations_fr get librarySelectionMenu =>
      LibrarySelectionMenuTranslations_fr(this);
  PreferenceDownloadedOnlyTranslations_fr get preferenceDownloadedOnly =>
      PreferenceDownloadedOnlyTranslations_fr(this);
  PreferenceIncognitoModeTranslations_fr get preferenceIncognitoMode =>
      PreferenceIncognitoModeTranslations_fr(this);
  LabelDownloadQueueTranslations_fr get labelDownloadQueue =>
      LabelDownloadQueueTranslations_fr(this);
  String get labelCategories => "Catégories";
  String get labelStatistics => "Statistiques";
  String get labelStorage => "Données et stockage";
  String get labelSettings => "Paramètres";
  String get labelAbout => "À propos";
  String get labelHelp => "Aide";
  PreferenceCategoryAppearanceTranslations_fr
      get preferenceCategoryAppearance =>
          PreferenceCategoryAppearanceTranslations_fr(this);
  String get preferenceHeaderTheme => "Thème";
  PreferenceModeTranslations_fr get preferenceMode =>
      PreferenceModeTranslations_fr(this);
  PreferenceThemeTranslations_fr get preferenceTheme =>
      PreferenceThemeTranslations_fr(this);
  PreferenceAmoledDarkTranslations_fr get preferenceAmoledDark =>
      PreferenceAmoledDarkTranslations_fr(this);
  String get preferenceHeaderDisplay => "Affichage";
  PreferenceLanguageTranslations_fr get preferenceLanguage =>
      PreferenceLanguageTranslations_fr(this);
  PreferenceDateFormatTranslations_fr get preferenceDateFormat =>
      PreferenceDateFormatTranslations_fr(this);
  PreferenceRelativeTimestampsTranslations_fr
      get preferenceRelativeTimestamps =>
          PreferenceRelativeTimestampsTranslations_fr(this);
  PreferenceCategoryLibraryTranslations_fr get preferenceCategoryLibrary =>
      PreferenceCategoryLibraryTranslations_fr(this);
  String get preferenceSectionCategories => "Catégories";
  PreferenceCategoriesTranslations_fr get preferenceCategories =>
      PreferenceCategoriesTranslations_fr(this);
  PreferenceCategoryReaderTranslations_fr get preferenceCategoryReader =>
      PreferenceCategoryReaderTranslations_fr(this);
  PreferenceCategoryDownloadsTranslations_fr get preferenceCategoryDownloads =>
      PreferenceCategoryDownloadsTranslations_fr(this);
  PreferenceCategoryTrackingTranslations_fr get preferenceCategoryTracking =>
      PreferenceCategoryTrackingTranslations_fr(this);
  PreferenceCategoryBrowseTranslations_fr get preferenceCategoryBrowse =>
      PreferenceCategoryBrowseTranslations_fr(this);
  PreferenceCategoryNotificationsTranslations_fr
      get preferenceCategoryNotifications =>
          PreferenceCategoryNotificationsTranslations_fr(this);
  PreferenceCategoryDataStorageTranslations_fr
      get preferenceCategoryDataStorage =>
          PreferenceCategoryDataStorageTranslations_fr(this);
  PreferenceCategorySecurityPrivacyTranslations_fr
      get preferenceCategorySecurityPrivacy =>
          PreferenceCategorySecurityPrivacyTranslations_fr(this);
  PreferenceCategoryAdvancedTranslations_fr get preferenceCategoryAdvanced =>
      PreferenceCategoryAdvancedTranslations_fr(this);
  String get preferenceCategoryAbout => "À propos";
  String get errorGeneric => "Une erreur s'est produite";
  String get errorTryAgain => "Réessayer";
  String get errorRouteNotFound => "Route introuvable";
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
      case 'librarySelectionMenu':
        return librarySelectionMenu;
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
      case 'preferenceDateFormat':
        return preferenceDateFormat;
      case 'preferenceRelativeTimestamps':
        return preferenceRelativeTimestamps;
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

class LibraryOptionsFilterTranslations_fr
    extends LibraryOptionsFilterTranslations {
  final Translations_fr _parent;
  const LibraryOptionsFilterTranslations_fr(this._parent) : super(_parent);
  String get header => "Filtre";
  String get downloaded => "Téléchargé";
  String get unread => "Non lu";
  String get started => "Commencé";
  String get completed => "Terminé";
  String get bookmarked => "Marqué";
  String get updated => "Mis à jour";
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

class LibraryOptionsSortTranslations_fr extends LibraryOptionsSortTranslations {
  final Translations_fr _parent;
  const LibraryOptionsSortTranslations_fr(this._parent) : super(_parent);
  String get header => "Trier";
  String get title => "Titre";
  String get author => "Auteur";
  String get totalChapters => "Chapitres totaux";
  String get lastRead => "Dernière lecture";
  String get lastChecked => "Dernière vérification";
  String get lastUpdated => "Dernière mise à jour";
  String get unreadChapters => "Chapitres non lus";
  String get latestChapter => "Dernier chapitre";
  String get dateFetched => "Date de récupération";
  String get dateAdded => "Date d'ajout";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'title':
        return title;
      case 'author':
        return author;
      case 'totalChapters':
        return totalChapters;
      case 'lastRead':
        return lastRead;
      case 'lastChecked':
        return lastChecked;
      case 'lastUpdated':
        return lastUpdated;
      case 'unreadChapters':
        return unreadChapters;
      case 'latestChapter':
        return latestChapter;
      case 'dateFetched':
        return dateFetched;
      case 'dateAdded':
        return dateAdded;
      default:
        return super[key];
    }
  }
}

class LibraryOptionsDisplayTranslations_fr
    extends LibraryOptionsDisplayTranslations {
  final Translations_fr _parent;
  const LibraryOptionsDisplayTranslations_fr(this._parent) : super(_parent);
  String get header => "Affichage";
  DisplayModeLibraryOptionsDisplayTranslations_fr get displayMode =>
      DisplayModeLibraryOptionsDisplayTranslations_fr(this);
  OverlayLibraryOptionsDisplayTranslations_fr get overlay =>
      OverlayLibraryOptionsDisplayTranslations_fr(this);
  TabsLibraryOptionsDisplayTranslations_fr get tabs =>
      TabsLibraryOptionsDisplayTranslations_fr(this);
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

class DisplayModeLibraryOptionsDisplayTranslations_fr
    extends DisplayModeLibraryOptionsDisplayTranslations {
  final LibraryOptionsDisplayTranslations_fr _parent;
  const DisplayModeLibraryOptionsDisplayTranslations_fr(this._parent)
      : super(_parent);
  String get subheader => "Mode d'affichage";
  String get compactGrid => "Grille compacte";
  String get comfortableGrid => "Grille confortable";
  String get coverOnlyGrid => "Grille de couverture uniquement";
  String get list => "Liste";
  String gridSize(int size) =>
      "${_plural(size, zero: 'Défaut', other: '$size par rangée')}";
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

class OverlayLibraryOptionsDisplayTranslations_fr
    extends OverlayLibraryOptionsDisplayTranslations {
  final LibraryOptionsDisplayTranslations_fr _parent;
  const OverlayLibraryOptionsDisplayTranslations_fr(this._parent)
      : super(_parent);
  String get subheader => "Superposition";
  String get downloadedChapters => "Chapitres téléchargés";
  String get unreadChapters => "Chapitres non lus";
  String get language => "Langue";
  String get continueReading => "Bouton Continuer la lecture";
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

class TabsLibraryOptionsDisplayTranslations_fr
    extends TabsLibraryOptionsDisplayTranslations {
  final LibraryOptionsDisplayTranslations_fr _parent;
  const TabsLibraryOptionsDisplayTranslations_fr(this._parent) : super(_parent);
  String get subheader => "Onglets";
  String get category => "Afficher les onglets de catégorie";
  String get number => "Afficher le nombre d'œuvres";
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

class LibraryOptionsCategoryTranslations_fr
    extends LibraryOptionsCategoryTranslations {
  final Translations_fr _parent;
  const LibraryOptionsCategoryTranslations_fr(this._parent) : super(_parent);
  String get header => "Catégorie";
  String get all => "Tout";
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

class LibraryMenuTranslations_fr extends LibraryMenuTranslations {
  final Translations_fr _parent;
  const LibraryMenuTranslations_fr(this._parent) : super(_parent);
  String get updateLibrary => "Mettre à jour la bibliothèque";
  String get updateCategory => "Mettre à jour la catégorie";
  String get randomWork => "Ouvrir une œuvre aléatoire";
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

class LibrarySelectionMenuTranslations_fr
    extends LibrarySelectionMenuTranslations {
  final Translations_fr _parent;
  const LibrarySelectionMenuTranslations_fr(this._parent) : super(_parent);
  String get categorizeSelected => "Catégoriser la sélection";
  String get markAsRead => "Marquer comme lu";
  String get markAsUnread => "Marquer comme non lu";
  String get downloadAll => "Télécharger tous les chapitres";
  String get delete => "Supprimer l'œuvre";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'categorizeSelected':
        return categorizeSelected;
      case 'markAsRead':
        return markAsRead;
      case 'markAsUnread':
        return markAsUnread;
      case 'downloadAll':
        return downloadAll;
      case 'delete':
        return delete;
      default:
        return super[key];
    }
  }
}

class PreferenceDownloadedOnlyTranslations_fr
    extends PreferenceDownloadedOnlyTranslations {
  final Translations_fr _parent;
  const PreferenceDownloadedOnlyTranslations_fr(this._parent) : super(_parent);
  String get title => "Téléchargé uniquement";
  String get summary => "Afficher uniquement les œuvres téléchargées";
  String get disabledWeb =>
      "Cette fonctionnalité est désactivée lors de l'utilisation du lecteur Web";
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
      case 'disabledWeb':
        return disabledWeb;
      default:
        return super[key];
    }
  }
}

class PreferenceIncognitoModeTranslations_fr
    extends PreferenceIncognitoModeTranslations {
  final Translations_fr _parent;
  const PreferenceIncognitoModeTranslations_fr(this._parent) : super(_parent);
  String get title => "Mode Incognito";
  String get summary =>
      "Ne pas enregistrer l'historique ni les requêtes de recherche";
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

class LabelDownloadQueueTranslations_fr extends LabelDownloadQueueTranslations {
  final Translations_fr _parent;
  const LabelDownloadQueueTranslations_fr(this._parent) : super(_parent);
  String get title => "File d'attente de téléchargement";
  String downloading(String status, int count) => "$status: $count restant";
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

class PreferenceCategoryAppearanceTranslations_fr
    extends PreferenceCategoryAppearanceTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryAppearanceTranslations_fr(this._parent)
      : super(_parent);
  String get header => "Apparence";
  String get summary => "Thème, format de date et d'heure";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceModeTranslations_fr extends PreferenceModeTranslations {
  final Translations_fr _parent;
  const PreferenceModeTranslations_fr(this._parent) : super(_parent);
  String get header => "Mode";
  String get system => "Système";
  String get dark => "Sombre";
  String get light => "Clair";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
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

class PreferenceThemeTranslations_fr extends PreferenceThemeTranslations {
  final Translations_fr _parent;
  const PreferenceThemeTranslations_fr(this._parent) : super(_parent);
  String get header => "Thème";
  String subheader(String themeName) => "Thème actif: $themeName";
  String count(int count) =>
      "${_plural(count, zero: 'Aucun thème', one: '1 thème', other: '$count thèmes')}";
  String get base => "Par défaut";
  String get custom => "Personnalisé";
  String get dynamic => "Dynamique";
  String get greenApple => "Pomme verte";
  String get lavender => "Lavande";
  String get midnightDusk => "Crépuscule de minuit";
  String get nord => "Nord";
  String get strawberry => "Fraise";
  String get tako => "Tako";
  String get tealTurquoise => "Sarcelle et turquoise";
  String get tidalWave => "Vague de marée";
  String get yinYang => "Yin et Yang";
  String get yotsuba => "Yotsuba";
  String get silverWolf => "Loup argenté";
  String get dracula => "Dracula PRO";
  String get gaziter => "Gaziter";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'subheader':
        return subheader;
      case 'count':
        return count;
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
      case 'gaziter':
        return gaziter;
      default:
        return super[key];
    }
  }
}

class PreferenceAmoledDarkTranslations_fr
    extends PreferenceAmoledDarkTranslations {
  final Translations_fr _parent;
  const PreferenceAmoledDarkTranslations_fr(this._parent) : super(_parent);
  String get header => "AMOLED Dark";
  String get summary => "Utiliser de vrais arrière-plans noirs";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceLanguageTranslations_fr extends PreferenceLanguageTranslations {
  final Translations_fr _parent;
  const PreferenceLanguageTranslations_fr(this._parent) : super(_parent);
  String get header => "Langue de l'application";
  String get summary => "Sélectionner la langue de l'application";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceDateFormatTranslations_fr
    extends PreferenceDateFormatTranslations {
  final Translations_fr _parent;
  const PreferenceDateFormatTranslations_fr(this._parent) : super(_parent);
  String get header => "Format de date";
  String summary(String format, String date) => "$format ($date)";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceRelativeTimestampsTranslations_fr
    extends PreferenceRelativeTimestampsTranslations {
  final Translations_fr _parent;
  const PreferenceRelativeTimestampsTranslations_fr(this._parent)
      : super(_parent);
  String get header => "Horodatages relatifs";
  String summary(String date) => "\"Aujourd`hui\" au lieu de \"$date\"";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoryLibraryTranslations_fr
    extends PreferenceCategoryLibraryTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryLibraryTranslations_fr(this._parent) : super(_parent);
  String get header => "Bibliothèque";
  String get summary => "Catégories, mise à jour globale, balayage de chapitre";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoriesTranslations_fr
    extends PreferenceCategoriesTranslations {
  final Translations_fr _parent;
  const PreferenceCategoriesTranslations_fr(this._parent) : super(_parent);
  String get header => "Modifier les catégories";
  String summary(int num) =>
      "${_plural(num, zero: '', one: '$num category', other: '$num categorys')}";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoryReaderTranslations_fr
    extends PreferenceCategoryReaderTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryReaderTranslations_fr(this._parent) : super(_parent);
  String get header => "Lecteur";
  String get summary => "Personnalisation de la lecture";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoryDownloadsTranslations_fr
    extends PreferenceCategoryDownloadsTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryDownloadsTranslations_fr(this._parent)
      : super(_parent);
  String get header => "Téléchargements";
  String get summary => "Téléchargements, notifications, etc.";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoryTrackingTranslations_fr
    extends PreferenceCategoryTrackingTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryTrackingTranslations_fr(this._parent)
      : super(_parent);
  String get header => "Suivi";
  String get summary =>
      "Synchronisation de la progression, synchronisation améliorée";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoryBrowseTranslations_fr
    extends PreferenceCategoryBrowseTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryBrowseTranslations_fr(this._parent) : super(_parent);
  String get header => "Parcourir";
  String get summary => "Sources, extensions, recherche globale";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoryNotificationsTranslations_fr
    extends PreferenceCategoryNotificationsTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryNotificationsTranslations_fr(this._parent)
      : super(_parent);
  String get header => "Notifications";
  String get summary => "Téléchargement terminé, mise à jour disponible";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoryDataStorageTranslations_fr
    extends PreferenceCategoryDataStorageTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryDataStorageTranslations_fr(this._parent)
      : super(_parent);
  String get header => "Données et stockage";
  String get summary => "Sauvegardes, espace de stockage";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategorySecurityPrivacyTranslations_fr
    extends PreferenceCategorySecurityPrivacyTranslations {
  final Translations_fr _parent;
  const PreferenceCategorySecurityPrivacyTranslations_fr(this._parent)
      : super(_parent);
  String get header => "Sécurité et confidentialité";
  String get summary => "Verrouillage d'application, écran sécurisé";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}

class PreferenceCategoryAdvancedTranslations_fr
    extends PreferenceCategoryAdvancedTranslations {
  final Translations_fr _parent;
  const PreferenceCategoryAdvancedTranslations_fr(this._parent)
      : super(_parent);
  String get header => "Avancé";
  String get summary =>
      "Options du développeur, fonctionnalités expérimentales";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'summary':
        return summary;
      default:
        return super[key];
    }
  }
}
