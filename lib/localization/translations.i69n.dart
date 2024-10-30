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
  FlavorsTranslations get flavors => FlavorsTranslations(this);
  String get test => "Hello, World!";
  String get labelLibrary => "Library";
  String get labelUpdates => "Updates";
  String get labelHistory => "History";
  String get labelBrowse => "Browse";
  String get labelMore => "More";
  String get actionOpen => "Open";
  String get actionClose => "Close";
  String get actionCancel => "Cancel";
  String get actionSave => "Save";
  String get actionDelete => "Delete";
  String get actionRemove => "Remove";
  String get actionEdit => "Edit";
  String get actionSearch => "Search";
  String get librarySearchHint => "Search...";
  String get libraryEmpty => "No works found";
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
  LibrarySelectionMenuTranslations get librarySelectionMenu =>
      LibrarySelectionMenuTranslations(this);
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
  PreferenceContrastTranslations get preferenceContrast =>
      PreferenceContrastTranslations(this);
  PreferenceThemeTranslations get preferenceTheme =>
      PreferenceThemeTranslations(this);
  PreferenceAmoledDarkTranslations get preferenceAmoledDark =>
      PreferenceAmoledDarkTranslations(this);
  String get preferenceHeaderDisplay => "Display";
  PreferenceLanguageTranslations get preferenceLanguage =>
      PreferenceLanguageTranslations(this);
  PreferenceDateFormatTranslations get preferenceDateFormat =>
      PreferenceDateFormatTranslations(this);
  PreferenceRelativeTimestampsTranslations get preferenceRelativeTimestamps =>
      PreferenceRelativeTimestampsTranslations(this);
  PreferenceCategoryLibraryTranslations get preferenceCategoryLibrary =>
      PreferenceCategoryLibraryTranslations(this);
  String get preferenceSectionCategories => "Categories";
  PreferenceCategoriesTranslations get preferenceCategories =>
      PreferenceCategoriesTranslations(this);
  PreferenceDefaultCategoryTranslations get preferenceDefaultCategory =>
      PreferenceDefaultCategoryTranslations(this);
  String get preferencePerCategorySort => "Per-category settings for sort";
  String get preferenceSectionUpdate => "Global Update";
  PreferenceAutomaticUpdateTranslations get preferenceAutomaticUpdate =>
      PreferenceAutomaticUpdateTranslations(this);
  PreferenceUpdateCategoriesTranslations get preferenceUpdateCategories =>
      PreferenceUpdateCategoriesTranslations(this);
  PreferenceAutoRefreshMetadataTranslations get preferenceAutoRefreshMetadata =>
      PreferenceAutoRefreshMetadataTranslations(this);
  PreferenceSmartUpdateTranslations get preferenceSmartUpdate =>
      PreferenceSmartUpdateTranslations(this);
  String get preferenceShowUnreadCount => "Show unread count on Updates icon";
  String get preferenceSectionSwipe => "Chapter Swipe";
  String get preferenceSwipeLeft => "Swipe Left Action";
  String get preferenceSwipeRight => "Swipe Right Action";
  PreferenceSwipeActionsTranslations get preferenceSwipeActions =>
      PreferenceSwipeActionsTranslations(this);
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
  String get preferenceCategoryAbout => "About";
  PreferenceVersionTranslations get preferenceVersion =>
      PreferenceVersionTranslations(this);
  String get preferenceCheckForUpdates => "Check for Updates";
  String get preferenceWhatsNew => "What's New";
  String get preferenceLicenses => "Open-Source Licenses";
  String get preferencePrivacyPolicy => "Privacy Policy";
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
      case 'flavors':
        return flavors;
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
      case 'actionOpen':
        return actionOpen;
      case 'actionClose':
        return actionClose;
      case 'actionCancel':
        return actionCancel;
      case 'actionSave':
        return actionSave;
      case 'actionDelete':
        return actionDelete;
      case 'actionRemove':
        return actionRemove;
      case 'actionEdit':
        return actionEdit;
      case 'actionSearch':
        return actionSearch;
      case 'librarySearchHint':
        return librarySearchHint;
      case 'libraryEmpty':
        return libraryEmpty;
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
      case 'preferenceContrast':
        return preferenceContrast;
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
      case 'preferenceDefaultCategory':
        return preferenceDefaultCategory;
      case 'preferencePerCategorySort':
        return preferencePerCategorySort;
      case 'preferenceSectionUpdate':
        return preferenceSectionUpdate;
      case 'preferenceAutomaticUpdate':
        return preferenceAutomaticUpdate;
      case 'preferenceUpdateCategories':
        return preferenceUpdateCategories;
      case 'preferenceAutoRefreshMetadata':
        return preferenceAutoRefreshMetadata;
      case 'preferenceSmartUpdate':
        return preferenceSmartUpdate;
      case 'preferenceShowUnreadCount':
        return preferenceShowUnreadCount;
      case 'preferenceSectionSwipe':
        return preferenceSectionSwipe;
      case 'preferenceSwipeLeft':
        return preferenceSwipeLeft;
      case 'preferenceSwipeRight':
        return preferenceSwipeRight;
      case 'preferenceSwipeActions':
        return preferenceSwipeActions;
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
      case 'preferenceVersion':
        return preferenceVersion;
      case 'preferenceCheckForUpdates':
        return preferenceCheckForUpdates;
      case 'preferenceWhatsNew':
        return preferenceWhatsNew;
      case 'preferenceLicenses':
        return preferenceLicenses;
      case 'preferencePrivacyPolicy':
        return preferencePrivacyPolicy;
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

class FlavorsTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const FlavorsTranslations(this._parent);
  String get development => "Development";
  String get testing => "Testing";
  String get production => "Production";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'development':
        return development;
      case 'testing':
        return testing;
      case 'production':
        return production;
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
  String get title => "Title";
  String get author => "Author";
  String get totalChapters => "Total Chapters";
  String get lastRead => "Last Read";
  String get lastChecked => "Last Checked";
  String get lastUpdated => "Last Updated";
  String get unreadChapters => "Unread Chapters";
  String get latestChapter => "Latest Chapter";
  String get dateFetched => "Fetched Date";
  String get dateAdded => "Added Date";
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

class LibrarySelectionMenuTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LibrarySelectionMenuTranslations(this._parent);
  String get categorizeSelected => "Categorize Selected";
  String get markAsRead => "Mark as Read";
  String get markAsUnread => "Mark as Unread";
  String get downloadAll => "Download All Chapters";
  String get delete => "Remove Work";
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
  String get header => "Appearance";
  String get summary => "Theme, date and time format";
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

class PreferenceContrastTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceContrastTranslations(this._parent);
  String get header => "Contrast";
  String get summary => "Adjust contrast for better readability";
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
        return key;
    }
  }
}

class PreferenceAmoledDarkTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceAmoledDarkTranslations(this._parent);
  String get header => "AMOLED Dark";
  String get summary => "Use true black backgrounds";
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
        return key;
    }
  }
}

class PreferenceLanguageTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceLanguageTranslations(this._parent);
  String get header => "Application Language";
  String get summary => "Select the application language";
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
        return key;
    }
  }
}

class PreferenceDateFormatTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceDateFormatTranslations(this._parent);
  String get header => "Date Format";
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
        return key;
    }
  }
}

class PreferenceRelativeTimestampsTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceRelativeTimestampsTranslations(this._parent);
  String get header => "Relative Timestamps";
  String summary(String date) => "\"Today\" instead of \"$date\"";
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
        return key;
    }
  }
}

class PreferenceCategoryLibraryTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryLibraryTranslations(this._parent);
  String get header => "Library";
  String get summary => "Categories, global update, chapter swipe";
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
        return key;
    }
  }
}

class PreferenceCategoriesTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoriesTranslations(this._parent);
  String get header => "Edit Categories";
  String summary(int num) =>
      "${_plural(num, zero: '', one: '$num category', other: '$num categories')}";
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
        return key;
    }
  }
}

class PreferenceDefaultCategoryTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceDefaultCategoryTranslations(this._parent);
  String get header => "Default Category";
  String get alwaysAsk => "Always ask";
  String get defaultOption => "Default";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'alwaysAsk':
        return alwaysAsk;
      case 'defaultOption':
        return defaultOption;
      default:
        return key;
    }
  }
}

class PreferenceAutomaticUpdateTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceAutomaticUpdateTranslations(this._parent);
  String get header => "Automatic Updates";
  String get off => "Off";
  String get every12Hours => "Every 12 Hours";
  String get daily => "Daily";
  String get every2Days => "Every 2 Days";
  String get every3Days => "Every 3 Days";
  String get weekly => "Weekly";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'off':
        return off;
      case 'every12Hours':
        return every12Hours;
      case 'daily':
        return daily;
      case 'every2Days':
        return every2Days;
      case 'every3Days':
        return every3Days;
      case 'weekly':
        return weekly;
      default:
        return key;
    }
  }
}

class PreferenceUpdateCategoriesTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceUpdateCategoriesTranslations(this._parent);
  String get header => "Update Categories";
  String include(String value) => "Include: $value";
  String exclude(String value) => "Exclude: $value";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'header':
        return header;
      case 'include':
        return include;
      case 'exclude':
        return exclude;
      default:
        return key;
    }
  }
}

class PreferenceAutoRefreshMetadataTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceAutoRefreshMetadataTranslations(this._parent);
  String get header => "Auto Refresh Metadata";
  String get summary =>
      "Automatically refresh metadata for downloaded works when updating library";
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
        return key;
    }
  }
}

class PreferenceSmartUpdateTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceSmartUpdateTranslations(this._parent);
  String get header => "Smart Update";
  String summary(List<String> categories) => "'${categories.join(', ')}'\n";
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
        return key;
    }
  }
}

class PreferenceSwipeActionsTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceSwipeActionsTranslations(this._parent);
  String get disabled => "Disabled";
  String get readUnread => "Mark as Read/Unread";
  String get bookmark => "Bookmark Chapter";
  String get download => "Download Chapter";
  String get delete => "Delete Chapter";
  String get flag => "Flag Chapter";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'disabled':
        return disabled;
      case 'readUnread':
        return readUnread;
      case 'bookmark':
        return bookmark;
      case 'download':
        return download;
      case 'delete':
        return delete;
      case 'flag':
        return flag;
      default:
        return key;
    }
  }
}

class PreferenceCategoryReaderTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryReaderTranslations(this._parent);
  String get header => "Reader";
  String get summary => "Reading mode, display, navigation";
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
        return key;
    }
  }
}

class PreferenceCategoryDownloadsTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryDownloadsTranslations(this._parent);
  String get header => "Downloads";
  String get summary => "Automatic download, download ahead";
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
        return key;
    }
  }
}

class PreferenceCategoryTrackingTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryTrackingTranslations(this._parent);
  String get header => "Tracking";
  String get summary => "Progress sync, enhanced sync";
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
        return key;
    }
  }
}

class PreferenceCategoryBrowseTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryBrowseTranslations(this._parent);
  String get header => "Browse";
  String get summary => "Sources, extensions, global search";
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
        return key;
    }
  }
}

class PreferenceCategoryNotificationsTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryNotificationsTranslations(this._parent);
  String get header => "Notifications";
  String get summary => "Download complete, update available";
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
        return key;
    }
  }
}

class PreferenceCategoryDataStorageTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryDataStorageTranslations(this._parent);
  String get header => "Data & Storage";
  String get summary => "Backups, storage space";
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
        return key;
    }
  }
}

class PreferenceCategorySecurityPrivacyTranslations
    implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategorySecurityPrivacyTranslations(this._parent);
  String get header => "Security & Privacy";
  String get summary => "App lock, secure screen";
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
        return key;
    }
  }
}

class PreferenceCategoryAdvancedTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceCategoryAdvancedTranslations(this._parent);
  String get header => "Advanced";
  String get summary => "Developer options, experimental features";
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
        return key;
    }
  }
}

class PreferenceVersionTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PreferenceVersionTranslations(this._parent);
  String get header => "Version";
  String summary(String channel, String version, String date) =>
      "$channel v$version ($date)";
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
        return key;
    }
  }
}
