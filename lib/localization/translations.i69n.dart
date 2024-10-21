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
  String get test => "Hello, World!";
  String get labelLibrary => "Library";
  String get labelUpdates => "Updates";
  String get labelHistory => "History";
  String get labelBrowse => "Browse";
  String get labelMore => "More";
  String get librarySearchHint => "Search...";
  String get libraryCategoryDefault => "Default";
  LibraryOptionsFilterTranslations get libraryOptionsFilter =>
      LibraryOptionsFilterTranslations(this);
  LibraryOptionsSortTranslations get libraryOptionsSort =>
      LibraryOptionsSortTranslations(this);
  LibraryOptionsDisplayTranslations get libraryOptionsDisplay =>
      LibraryOptionsDisplayTranslations(this);
  LibraryOptionsCategoryTranslations get libraryOptionsCategory =>
      LibraryOptionsCategoryTranslations(this);
  LibraryMenuTranslations get libraryMenu => LibraryMenuTranslations(this);
  PreferenceDownloadedOnlyTranslations get preferenceDownloadedOnly =>
      PreferenceDownloadedOnlyTranslations(this);
  PreferenceIncognitoModeTranslations get preferenceIncognitoMode =>
      PreferenceIncognitoModeTranslations(this);
  LabelDownloadQueueTranslations get labelDownloadQueue =>
      LabelDownloadQueueTranslations(this);
  String get labelCategories => "Categories";
  String get labelStatistics => "Statistics";
  String get labelStorage => "Data and Storage";
  String get labelSettings => "Settings";
  String get labelAbout => "About";
  String get labelHelp => "Help";
  PreferenceCategoryAppearanceTranslations get preferenceCategoryAppearance =>
      PreferenceCategoryAppearanceTranslations(this);
  String get preferenceHeaderTheme => "Theming";
  PreferenceModeTranslations get preferenceMode =>
      PreferenceModeTranslations(this);
  PreferenceThemeTranslations get preferenceTheme =>
      PreferenceThemeTranslations(this);
  PreferenceAmoledDarkTranslations get preferenceAmoledDark =>
      PreferenceAmoledDarkTranslations(this);
  String get preferenceHeaderDisplay => "Display";
  PreferenceLanguageTranslations get preferenceLanguage =>
      PreferenceLanguageTranslations(this);
  PreferenceCategoryLibraryTranslations get preferenceCategoryLibrary =>
      PreferenceCategoryLibraryTranslations(this);
  String get preferenceSectionCategories => "Categories";
  PreferenceCategoriesTranslations get preferenceCategories =>
      PreferenceCategoriesTranslations(this);
  PreferenceCategoryReaderTranslations get preferenceCategoryReader =>
      PreferenceCategoryReaderTranslations(this);
  PreferenceCategoryDownloadsTranslations get preferenceCategoryDownloads =>
      PreferenceCategoryDownloadsTranslations(this);
  PreferenceCategoryTrackingTranslations get preferenceCategoryTracking =>
      PreferenceCategoryTrackingTranslations(this);
  PreferenceCategoryBrowseTranslations get preferenceCategoryBrowse =>
      PreferenceCategoryBrowseTranslations(this);
  PreferenceCategoryNotificationsTranslations
      get preferenceCategoryNotifications =>
          PreferenceCategoryNotificationsTranslations(this);
  PreferenceCategoryDataStorageTranslations get preferenceCategoryDataStorage =>
      PreferenceCategoryDataStorageTranslations(this);
  PreferenceCategorySecurityPrivacyTranslations
      get preferenceCategorySecurityPrivacy =>
          PreferenceCategorySecurityPrivacyTranslations(this);
  PreferenceCategoryAdvancedTranslations get preferenceCategoryAdvanced =>
      PreferenceCategoryAdvancedTranslations(this);
  PreferenceCategoryAboutTranslations get preferenceCategoryAbout =>
      PreferenceCategoryAboutTranslations(this);
  String get errorGeneric => "An error occurred";
  String get errorTryAgain => "Try Again";
  String get errorRouteNotFound => "Route not found";
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
        return key;
    }
  }
}

class LibraryOptionsFilterTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LibraryOptionsFilterTranslations(this._parent);
  String get header => "Filter";
  String get downloaded => "Downloaded";
  String get unread => "Unread";
  String get started => "Started";
  String get completed => "Completed";
  String get bookmarked => "Bookmarked";
  String get updated => "Updated";
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
        return key;
    }
  }
}

class LibraryOptionsSortTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LibraryOptionsSortTranslations(this._parent);
  String get header => "Sort";
  String get alphabetically => "Alphabetically";
  String get totalChapters => "Total Chapters";
  String get lastRead => "Last Read";
  String get lastUpdated => "Last Updated";
  String get unreadChapters => "Unread Chapters";
  String get latestChapter => "Latest Chapter";
  String get fetchedDate => "Fetched Date";
  String get addedDate => "Added Date";
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
        return key;
    }
  }
}

class LibraryOptionsDisplayTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LibraryOptionsDisplayTranslations(this._parent);
  String get header => "Display";
  DisplayModeLibraryOptionsDisplayTranslations get displayMode =>
      DisplayModeLibraryOptionsDisplayTranslations(this);
  OverlayLibraryOptionsDisplayTranslations get overlay =>
      OverlayLibraryOptionsDisplayTranslations(this);
  TabsLibraryOptionsDisplayTranslations get tabs =>
      TabsLibraryOptionsDisplayTranslations(this);
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
        return key;
    }
  }
}

class DisplayModeLibraryOptionsDisplayTranslations
    implements i69n.I69nMessageBundle {
  final LibraryOptionsDisplayTranslations _parent;
  const DisplayModeLibraryOptionsDisplayTranslations(this._parent);
  String get subheader => "Display Mode";
  String get compactGrid => "Compact Grid";
  String get comfortableGrid => "Comfortable Grid";
  String get coverOnlyGrid => "Cover-Only Grid";
  String get list => "List";
  String gridSize(int size) =>
      "${_plural(size, zero: 'Default', other: '$size per row')}";
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
        return key;
    }
  }
}

class OverlayLibraryOptionsDisplayTranslations
    implements i69n.I69nMessageBundle {
  final LibraryOptionsDisplayTranslations _parent;
  const OverlayLibraryOptionsDisplayTranslations(this._parent);
  String get subheader => "Overlay";
  String get downloadedChapters => "Downloaded Chapters";
  String get unreadChapters => "Unread Chapters";
  String get language => "Language";
  String get continueReading => "Continue Reading Button";
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
        return key;
    }
  }
}

class TabsLibraryOptionsDisplayTranslations implements i69n.I69nMessageBundle {
  final LibraryOptionsDisplayTranslations _parent;
  const TabsLibraryOptionsDisplayTranslations(this._parent);
  String get subheader => "Tabs";
  String get category => "Show Category Tabs";
  String get number => "Show Number of Works";
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
        return key;
    }
  }
}

class LibraryOptionsCategoryTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LibraryOptionsCategoryTranslations(this._parent);
  String get header => "Category";
  String get all => "All";
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
        return key;
    }
  }
}

class LibraryMenuTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LibraryMenuTranslations(this._parent);
  String get updateLibrary => "Update Library";
  String get updateCategory => "Update Category";
  String get randomWork => "Open Random Work";
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
        return key;
    }
  }
}

class PreferenceDownloadedOnlyTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceDownloadedOnlyTranslations(this._parent);
  String get title => "Downloaded Only";
  String get summary => "Only show downloaded works";
  String get disabledWeb =>
      "This feature is disabled when using the web reader";
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
        return key;
    }
  }
}

class PreferenceIncognitoModeTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceIncognitoModeTranslations(this._parent);
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

class LabelDownloadQueueTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LabelDownloadQueueTranslations(this._parent);
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

class PreferenceCategoryAppearanceTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryAppearanceTranslations(this._parent);
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

class PreferenceModeTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceModeTranslations(this._parent);
  String get header => "Mode";
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
      case 'header':
        return header;
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

class PreferenceThemeTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceThemeTranslations(this._parent);
  String get header => "Theme";
  String subheader(String themeName) => "Active Theme: $themeName";
  String count(int count) =>
      "${_plural(count, zero: 'No themes', one: '1 theme', other: '$count themes')}";
  String get base => "Default";
  String get custom => "Custom";
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
      default:
        return key;
    }
  }
}

class PreferenceAmoledDarkTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceAmoledDarkTranslations(this._parent);
  String get title => "AMOLED Dark";
  String get summary => "Use true black backgrounds";
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

class PreferenceLanguageTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceLanguageTranslations(this._parent);
  String get title => "Application Language";
  String get summary => "Select the application language";
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

class PreferenceCategoryLibraryTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryLibraryTranslations(this._parent);
  String get title => "Library";
  String get summary => "Categories, global update, chapter swipe";
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

class PreferenceCategoriesTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoriesTranslations(this._parent);
  String get title => "Edit Categories";
  String summary(int num) =>
      "${_plural(num, zero: '', one: '$num category', other: '$num categories')}";
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

class PreferenceCategoryReaderTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryReaderTranslations(this._parent);
  String get title => "Reader";
  String get summary => "Reading mode, display, navigation";
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

class PreferenceCategoryDownloadsTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryDownloadsTranslations(this._parent);
  String get title => "Downloads";
  String get summary => "Automatic download, download ahead";
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

class PreferenceCategoryTrackingTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryTrackingTranslations(this._parent);
  String get title => "Tracking";
  String get summary => "Progress sync, enhanced sync";
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

class PreferenceCategoryBrowseTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryBrowseTranslations(this._parent);
  String get title => "Browse";
  String get summary => "Sources, extensions, global search";
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

class PreferenceCategoryNotificationsTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryNotificationsTranslations(this._parent);
  String get title => "Notifications";
  String get summary => "Download complete, update available";
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

class PreferenceCategoryDataStorageTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryDataStorageTranslations(this._parent);
  String get title => "Data & Storage";
  String get summary => "Backups, storage space";
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

class PreferenceCategorySecurityPrivacyTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategorySecurityPrivacyTranslations(this._parent);
  String get title => "Security & Privacy";
  String get summary => "App lock, secure screen";
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

class PreferenceCategoryAdvancedTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryAdvancedTranslations(this._parent);
  String get title => "Advanced";
  String get summary => "Developer options, experimental features";
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

class PreferenceCategoryAboutTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryAboutTranslations(this._parent);
  String get title => "About";
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
        return key;
    }
  }
}
