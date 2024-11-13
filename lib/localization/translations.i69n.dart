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
  PageTranslations get page => PageTranslations(this);
  ActionTranslations get action => ActionTranslations(this);
  LibraryTranslations get library => LibraryTranslations(this);
  String get updates => "null";
  String get history => "null";
  String get browse => "null";
  MoreTranslations get more => MoreTranslations(this);
  SettingsTranslations get settings => SettingsTranslations(this);
  ErrorTranslations get error => ErrorTranslations(this);
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
      case 'page':
        return page;
      case 'action':
        return action;
      case 'library':
        return library;
      case 'updates':
        return updates;
      case 'history':
        return history;
      case 'browse':
        return browse;
      case 'more':
        return more;
      case 'settings':
        return settings;
      case 'error':
        return error;
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

class PageTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PageTranslations(this._parent);
  LibraryPageTranslations get library => LibraryPageTranslations(this);
  UpdatesPageTranslations get updates => UpdatesPageTranslations(this);
  HistoryPageTranslations get history => HistoryPageTranslations(this);
  BrowsePageTranslations get browse => BrowsePageTranslations(this);
  MorePageTranslations get more => MorePageTranslations(this);
  SettingsPageTranslations get settings => SettingsPageTranslations(this);
  WorkPageTranslations get work => WorkPageTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'library':
        return library;
      case 'updates':
        return updates;
      case 'history':
        return history;
      case 'browse':
        return browse;
      case 'more':
        return more;
      case 'settings':
        return settings;
      case 'work':
        return work;
      default:
        return key;
    }
  }
}

class LibraryPageTranslations implements i69n.I69nMessageBundle {
  final PageTranslations _parent;
  const LibraryPageTranslations(this._parent);
  String get title => "Library";
  CategoriesLibraryPageTranslations get categories =>
      CategoriesLibraryPageTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'categories':
        return categories;
      default:
        return key;
    }
  }
}

class CategoriesLibraryPageTranslations implements i69n.I69nMessageBundle {
  final LibraryPageTranslations _parent;
  const CategoriesLibraryPageTranslations(this._parent);
  String get base => "Default";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'base':
        return base;
      default:
        return key;
    }
  }
}

class UpdatesPageTranslations implements i69n.I69nMessageBundle {
  final PageTranslations _parent;
  const UpdatesPageTranslations(this._parent);
  String get title => "Updates";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      default:
        return key;
    }
  }
}

class HistoryPageTranslations implements i69n.I69nMessageBundle {
  final PageTranslations _parent;
  const HistoryPageTranslations(this._parent);
  String get title => "History";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      default:
        return key;
    }
  }
}

class BrowsePageTranslations implements i69n.I69nMessageBundle {
  final PageTranslations _parent;
  const BrowsePageTranslations(this._parent);
  String get title => "Browse";
  String get sources => "Sources";
  String get extensions => "Extensions";
  String get web => "Web";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'sources':
        return sources;
      case 'extensions':
        return extensions;
      case 'web':
        return web;
      default:
        return key;
    }
  }
}

class MorePageTranslations implements i69n.I69nMessageBundle {
  final PageTranslations _parent;
  const MorePageTranslations(this._parent);
  String get title => "More";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      default:
        return key;
    }
  }
}

class SettingsPageTranslations implements i69n.I69nMessageBundle {
  final PageTranslations _parent;
  const SettingsPageTranslations(this._parent);
  String get title => "Settings";
  AppearanceSettingsPageTranslations get appearance =>
      AppearanceSettingsPageTranslations(this);
  String get library => "Library";
  String get reader => "Reader";
  String get downloads => "Downloads";
  String get tracking => "Tracking";
  String get browse => "Browse";
  String get notifications => "Notifications";
  String get dataStorage => "Data & Storage";
  String get securityPrivacy => "Security & Privacy";
  String get advanced => "Advanced";
  String get about => "About";
  String get help => "Help";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'appearance':
        return appearance;
      case 'library':
        return library;
      case 'reader':
        return reader;
      case 'downloads':
        return downloads;
      case 'tracking':
        return tracking;
      case 'browse':
        return browse;
      case 'notifications':
        return notifications;
      case 'dataStorage':
        return dataStorage;
      case 'securityPrivacy':
        return securityPrivacy;
      case 'advanced':
        return advanced;
      case 'about':
        return about;
      case 'help':
        return help;
      default:
        return key;
    }
  }
}

class AppearanceSettingsPageTranslations implements i69n.I69nMessageBundle {
  final SettingsPageTranslations _parent;
  const AppearanceSettingsPageTranslations(this._parent);
  String get title => "Appearance";
  String get theme => "Theme";
  String get font => "Font";
  String get language => "Language";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'theme':
        return theme;
      case 'font':
        return font;
      case 'language':
        return language;
      default:
        return key;
    }
  }
}

class WorkPageTranslations implements i69n.I69nMessageBundle {
  final PageTranslations _parent;
  const WorkPageTranslations(this._parent);
  String title(String title) => "$title";
  String subtitle(List<String> authors) => "'${authors.join(', ')}'\n";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class ActionTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const ActionTranslations(this._parent);
  String get open => "Open";
  String get close => "Close";
  String get cancel => "Cancel";
  String get save => "Save";
  String get delete => "Delete";
  String get remove => "Remove";
  String get edit => "Edit";
  String get search => "Search";
  String get reset => "Reset";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'open':
        return open;
      case 'close':
        return close;
      case 'cancel':
        return cancel;
      case 'save':
        return save;
      case 'delete':
        return delete;
      case 'remove':
        return remove;
      case 'edit':
        return edit;
      case 'search':
        return search;
      case 'reset':
        return reset;
      default:
        return key;
    }
  }
}

class LibraryTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LibraryTranslations(this._parent);
  String get searchHint => "Search...";
  String get empty => "No works found";
  String get categoryDefault => "Default";
  OptionsLibraryTranslations get options => OptionsLibraryTranslations(this);
  MenuLibraryTranslations get menu => MenuLibraryTranslations(this);
  SelectionLibraryTranslations get selection =>
      SelectionLibraryTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'searchHint':
        return searchHint;
      case 'empty':
        return empty;
      case 'categoryDefault':
        return categoryDefault;
      case 'options':
        return options;
      case 'menu':
        return menu;
      case 'selection':
        return selection;
      default:
        return key;
    }
  }
}

class OptionsLibraryTranslations implements i69n.I69nMessageBundle {
  final LibraryTranslations _parent;
  const OptionsLibraryTranslations(this._parent);
  FilterOptionsLibraryTranslations get filter =>
      FilterOptionsLibraryTranslations(this);
  SortOptionsLibraryTranslations get sort =>
      SortOptionsLibraryTranslations(this);
  DisplayOptionsLibraryTranslations get display =>
      DisplayOptionsLibraryTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'filter':
        return filter;
      case 'sort':
        return sort;
      case 'display':
        return display;
      default:
        return key;
    }
  }
}

class FilterOptionsLibraryTranslations implements i69n.I69nMessageBundle {
  final OptionsLibraryTranslations _parent;
  const FilterOptionsLibraryTranslations(this._parent);
  String get title => "Filter";
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
      case 'title':
        return title;
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

class SortOptionsLibraryTranslations implements i69n.I69nMessageBundle {
  final OptionsLibraryTranslations _parent;
  const SortOptionsLibraryTranslations(this._parent);
  String get title => "Sort";
  String get alphabetically => "Alphabetically";
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
      case 'title':
        return title;
      case 'alphabetically':
        return alphabetically;
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

class DisplayOptionsLibraryTranslations implements i69n.I69nMessageBundle {
  final OptionsLibraryTranslations _parent;
  const DisplayOptionsLibraryTranslations(this._parent);
  String get title => "Display";
  ModeDisplayOptionsLibraryTranslations get mode =>
      ModeDisplayOptionsLibraryTranslations(this);
  String gridSize(int size) =>
      "${_plural(size, zero: 'Default', other: '$size per row')}";
  OverlayDisplayOptionsLibraryTranslations get overlay =>
      OverlayDisplayOptionsLibraryTranslations(this);
  TabsDisplayOptionsLibraryTranslations get tabs =>
      TabsDisplayOptionsLibraryTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'mode':
        return mode;
      case 'gridSize':
        return gridSize;
      case 'overlay':
        return overlay;
      case 'tabs':
        return tabs;
      default:
        return key;
    }
  }
}

class ModeDisplayOptionsLibraryTranslations implements i69n.I69nMessageBundle {
  final DisplayOptionsLibraryTranslations _parent;
  const ModeDisplayOptionsLibraryTranslations(this._parent);
  String get title => "Display Mode";
  String get compactGrid => "Compact Grid";
  String get comfortableGrid => "Comfortable Grid";
  String get coverOnlyGrid => "Cover-Only Grid";
  String get list => "List";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'compactGrid':
        return compactGrid;
      case 'comfortableGrid':
        return comfortableGrid;
      case 'coverOnlyGrid':
        return coverOnlyGrid;
      case 'list':
        return list;
      default:
        return key;
    }
  }
}

class OverlayDisplayOptionsLibraryTranslations
    implements i69n.I69nMessageBundle {
  final DisplayOptionsLibraryTranslations _parent;
  const OverlayDisplayOptionsLibraryTranslations(this._parent);
  String get title => "Overlay";
  String get downloadedChapters => "Downloaded Chapters";
  String get unreadChapters => "Unread Chapters";
  String get localSource => "Local Source";
  String get language => "Language";
  String get continueReading => "Continue Reading Button";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'downloadedChapters':
        return downloadedChapters;
      case 'unreadChapters':
        return unreadChapters;
      case 'localSource':
        return localSource;
      case 'language':
        return language;
      case 'continueReading':
        return continueReading;
      default:
        return key;
    }
  }
}

class TabsDisplayOptionsLibraryTranslations implements i69n.I69nMessageBundle {
  final DisplayOptionsLibraryTranslations _parent;
  const TabsDisplayOptionsLibraryTranslations(this._parent);
  String get title => "Tabs";
  String get category => "Show Category Tabs";
  String get number => "Show Number of Works";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'category':
        return category;
      case 'number':
        return number;
      default:
        return key;
    }
  }
}

class MenuLibraryTranslations implements i69n.I69nMessageBundle {
  final LibraryTranslations _parent;
  const MenuLibraryTranslations(this._parent);
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

class SelectionLibraryTranslations implements i69n.I69nMessageBundle {
  final LibraryTranslations _parent;
  const SelectionLibraryTranslations(this._parent);
  String get categorizeSelected => "Categorize Selected";
  String get markAsRead => "Mark as Read";
  String get markAsUnread => "Mark as Unread";
  String get downloadAll => "Download All Chapters";
  String get delete => "Remove Works";
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

class MoreTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const MoreTranslations(this._parent);
  DownloadedOnlyMoreTranslations get downloadedOnly =>
      DownloadedOnlyMoreTranslations(this);
  IncognitoModeMoreTranslations get incognitoMode =>
      IncognitoModeMoreTranslations(this);
  DownloadQueueMoreTranslations get downloadQueue =>
      DownloadQueueMoreTranslations(this);
  String get categories => "Categories";
  String get statistics => "Statistics";
  String get storage => "Data and Storage";
  String get settings => "Settings";
  String get about => "About";
  String get help => "Help";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'downloadedOnly':
        return downloadedOnly;
      case 'incognitoMode':
        return incognitoMode;
      case 'downloadQueue':
        return downloadQueue;
      case 'categories':
        return categories;
      case 'statistics':
        return statistics;
      case 'storage':
        return storage;
      case 'settings':
        return settings;
      case 'about':
        return about;
      case 'help':
        return help;
      default:
        return key;
    }
  }
}

class DownloadedOnlyMoreTranslations implements i69n.I69nMessageBundle {
  final MoreTranslations _parent;
  const DownloadedOnlyMoreTranslations(this._parent);
  String get title => "Downloaded Only";
  String subtitle({bool isWeb = false}) =>
      "${isWeb ? 'This feature is disabled when using the web reader' : 'Show only downloaded works'}";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class IncognitoModeMoreTranslations implements i69n.I69nMessageBundle {
  final MoreTranslations _parent;
  const IncognitoModeMoreTranslations(this._parent);
  String get title => "Incognito Mode";
  String get subtitle => "Don't save history or search queries";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class DownloadQueueMoreTranslations implements i69n.I69nMessageBundle {
  final MoreTranslations _parent;
  const DownloadQueueMoreTranslations(this._parent);
  String get title => "Download Queue";
  String subtitle(String status, int count) => "$status: $count remaining";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class SettingsTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const SettingsTranslations(this._parent);
  AppearanceSettingsTranslations get appearance =>
      AppearanceSettingsTranslations(this);
  LibrarySettingsTranslations get library => LibrarySettingsTranslations(this);
  ReaderSettingsTranslations get reader => ReaderSettingsTranslations(this);
  DownloadsSettingsTranslations get downloads =>
      DownloadsSettingsTranslations(this);
  TrackingSettingsTranslations get tracking =>
      TrackingSettingsTranslations(this);
  BrowseSettingsTranslations get browse => BrowseSettingsTranslations(this);
  NotificationsSettingsTranslations get notifications =>
      NotificationsSettingsTranslations(this);
  DataStorageSettingsTranslations get dataStorage =>
      DataStorageSettingsTranslations(this);
  SecurityPrivacySettingsTranslations get securityPrivacy =>
      SecurityPrivacySettingsTranslations(this);
  AdvancedSettingsTranslations get advanced =>
      AdvancedSettingsTranslations(this);
  AboutSettingsTranslations get about => AboutSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'appearance':
        return appearance;
      case 'library':
        return library;
      case 'reader':
        return reader;
      case 'downloads':
        return downloads;
      case 'tracking':
        return tracking;
      case 'browse':
        return browse;
      case 'notifications':
        return notifications;
      case 'dataStorage':
        return dataStorage;
      case 'securityPrivacy':
        return securityPrivacy;
      case 'advanced':
        return advanced;
      case 'about':
        return about;
      default:
        return key;
    }
  }
}

class AppearanceSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const AppearanceSettingsTranslations(this._parent);
  String get subtitle => "Theme, font, language, and more";
  ThemingAppearanceSettingsTranslations get theming =>
      ThemingAppearanceSettingsTranslations(this);
  DisplayAppearanceSettingsTranslations get display =>
      DisplayAppearanceSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      case 'theming':
        return theming;
      case 'display':
        return display;
      default:
        return key;
    }
  }
}

class ThemingAppearanceSettingsTranslations implements i69n.I69nMessageBundle {
  final AppearanceSettingsTranslations _parent;
  const ThemingAppearanceSettingsTranslations(this._parent);
  String get title => "Theming";
  ModeThemingAppearanceSettingsTranslations get mode =>
      ModeThemingAppearanceSettingsTranslations(this);
  String get contrast => "Contrast";
  ThemeThemingAppearanceSettingsTranslations get theme =>
      ThemeThemingAppearanceSettingsTranslations(this);
  AmoledThemingAppearanceSettingsTranslations get amoled =>
      AmoledThemingAppearanceSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'mode':
        return mode;
      case 'contrast':
        return contrast;
      case 'theme':
        return theme;
      case 'amoled':
        return amoled;
      default:
        return key;
    }
  }
}

class ModeThemingAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final ThemingAppearanceSettingsTranslations _parent;
  const ModeThemingAppearanceSettingsTranslations(this._parent);
  String get title => "Mode";
  String get system => "System";
  String get light => "Light";
  String get dark => "Dark";
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
      case 'light':
        return light;
      case 'dark':
        return dark;
      default:
        return key;
    }
  }
}

class ThemeThemingAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final ThemingAppearanceSettingsTranslations _parent;
  const ThemeThemingAppearanceSettingsTranslations(this._parent);
  String get title => "Theme";
  String subtitle(String active) =>
      "${active.isEmpty ? 'Pick a theme' : active}";
  String count(int count) =>
      "${_plural(count, zero: 'No themes', one: '$count theme', other: '$count themes')}";
  ThemesThemeThemingAppearanceSettingsTranslations get themes =>
      ThemesThemeThemingAppearanceSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      case 'count':
        return count;
      case 'themes':
        return themes;
      default:
        return key;
    }
  }
}

class ThemesThemeThemingAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final ThemeThemingAppearanceSettingsTranslations _parent;
  const ThemesThemeThemingAppearanceSettingsTranslations(this._parent);
  String get system => "Default";
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

class AmoledThemingAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final ThemingAppearanceSettingsTranslations _parent;
  const AmoledThemingAppearanceSettingsTranslations(this._parent);
  String get title => "AMOLED";
  String get subtitle => "Use AMOLED black backgrounds";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class DisplayAppearanceSettingsTranslations implements i69n.I69nMessageBundle {
  final AppearanceSettingsTranslations _parent;
  const DisplayAppearanceSettingsTranslations(this._parent);
  String get title => "Display";
  FontDisplayAppearanceSettingsTranslations get font =>
      FontDisplayAppearanceSettingsTranslations(this);
  LanguageDisplayAppearanceSettingsTranslations get language =>
      LanguageDisplayAppearanceSettingsTranslations(this);
  DateFormatDisplayAppearanceSettingsTranslations get dateFormat =>
      DateFormatDisplayAppearanceSettingsTranslations(this);
  RelativeTimestampsDisplayAppearanceSettingsTranslations
      get relativeTimestamps =>
          RelativeTimestampsDisplayAppearanceSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'font':
        return font;
      case 'language':
        return language;
      case 'dateFormat':
        return dateFormat;
      case 'relativeTimestamps':
        return relativeTimestamps;
      default:
        return key;
    }
  }
}

class FontDisplayAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final DisplayAppearanceSettingsTranslations _parent;
  const FontDisplayAppearanceSettingsTranslations(this._parent);
  String get title => "Font";
  String subtitle(String font) => "${font.isEmpty ? 'System font' : font}";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class LanguageDisplayAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final DisplayAppearanceSettingsTranslations _parent;
  const LanguageDisplayAppearanceSettingsTranslations(this._parent);
  String get title => "Language";
  String subtitle(String language) =>
      "${language.isEmpty ? 'System language' : language}";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class DateFormatDisplayAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final DisplayAppearanceSettingsTranslations _parent;
  const DateFormatDisplayAppearanceSettingsTranslations(this._parent);
  String get title => "Date Format";
  String subtitle(String name, String format) => "$name: $format";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class RelativeTimestampsDisplayAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final DisplayAppearanceSettingsTranslations _parent;
  const RelativeTimestampsDisplayAppearanceSettingsTranslations(this._parent);
  String get title => "Relative Timestamps";
  String subtitle(String date) => "'Today' instead of '$date'";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class LibrarySettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const LibrarySettingsTranslations(this._parent);
  String get subtitle => "Categories, global updates, chapter swipe";
  CategoriesLibrarySettingsTranslations get categories =>
      CategoriesLibrarySettingsTranslations(this);
  GlobalUpdatesLibrarySettingsTranslations get globalUpdates =>
      GlobalUpdatesLibrarySettingsTranslations(this);
  ChapterSwipeLibrarySettingsTranslations get chapterSwipe =>
      ChapterSwipeLibrarySettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      case 'categories':
        return categories;
      case 'globalUpdates':
        return globalUpdates;
      case 'chapterSwipe':
        return chapterSwipe;
      default:
        return key;
    }
  }
}

class CategoriesLibrarySettingsTranslations implements i69n.I69nMessageBundle {
  final LibrarySettingsTranslations _parent;
  const CategoriesLibrarySettingsTranslations(this._parent);
  String get title => "Categories";
  EditCategoriesCategoriesLibrarySettingsTranslations get editCategories =>
      EditCategoriesCategoriesLibrarySettingsTranslations(this);
  DefaultCategoryCategoriesLibrarySettingsTranslations get defaultCategory =>
      DefaultCategoryCategoriesLibrarySettingsTranslations(this);
  String get perCategorySort => "Per-Category Sort";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'editCategories':
        return editCategories;
      case 'defaultCategory':
        return defaultCategory;
      case 'perCategorySort':
        return perCategorySort;
      default:
        return key;
    }
  }
}

class EditCategoriesCategoriesLibrarySettingsTranslations
    implements i69n.I69nMessageBundle {
  final CategoriesLibrarySettingsTranslations _parent;
  const EditCategoriesCategoriesLibrarySettingsTranslations(this._parent);
  String get title => "Edit Categories";
  String subtitle(int count) =>
      "${_plural(count, zero: 'No categories', other: '$count categories')}";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class DefaultCategoryCategoriesLibrarySettingsTranslations
    implements i69n.I69nMessageBundle {
  final CategoriesLibrarySettingsTranslations _parent;
  const DefaultCategoryCategoriesLibrarySettingsTranslations(this._parent);
  String get title => "Default Category";
  String subtitle(String category) =>
      "${category.isEmpty ? 'Default' : category}";
  String get alwaysAsk => "Always Ask";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      case 'alwaysAsk':
        return alwaysAsk;
      default:
        return key;
    }
  }
}

class GlobalUpdatesLibrarySettingsTranslations
    implements i69n.I69nMessageBundle {
  final LibrarySettingsTranslations _parent;
  const GlobalUpdatesLibrarySettingsTranslations(this._parent);
  String get title => "Global Updates";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      default:
        return key;
    }
  }
}

class ChapterSwipeLibrarySettingsTranslations
    implements i69n.I69nMessageBundle {
  final LibrarySettingsTranslations _parent;
  const ChapterSwipeLibrarySettingsTranslations(this._parent);
  String get title => "Chapter Swipe";
  OptionsChapterSwipeLibrarySettingsTranslations get options =>
      OptionsChapterSwipeLibrarySettingsTranslations(this);
  String get left => "Swipe Left Action";
  String get right => "Swipe Right Action";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'options':
        return options;
      case 'left':
        return left;
      case 'right':
        return right;
      default:
        return key;
    }
  }
}

class OptionsChapterSwipeLibrarySettingsTranslations
    implements i69n.I69nMessageBundle {
  final ChapterSwipeLibrarySettingsTranslations _parent;
  const OptionsChapterSwipeLibrarySettingsTranslations(this._parent);
  String get disabled => "Disabled";
  String get bookmark => "Bookmark Chapter";
  String get markReadUnread => "Mark as Read/Unread";
  String get download => "Download Chapter";
  String get flag => "Flag Chapter";
  String get addToQueue => "Add to Queue";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'disabled':
        return disabled;
      case 'bookmark':
        return bookmark;
      case 'markReadUnread':
        return markReadUnread;
      case 'download':
        return download;
      case 'flag':
        return flag;
      case 'addToQueue':
        return addToQueue;
      default:
        return key;
    }
  }
}

class ReaderSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const ReaderSettingsTranslations(this._parent);
  String get subtitle => "Reading mode, display, navigation";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class DownloadsSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const DownloadsSettingsTranslations(this._parent);
  String get subtitle => "Download settings, queue, history";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class TrackingSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const TrackingSettingsTranslations(this._parent);
  String get subtitle => "Tracking settings, history, statistics";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class BrowseSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const BrowseSettingsTranslations(this._parent);
  String get subtitle => "Browse settings, sources, extensions";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class NotificationsSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const NotificationsSettingsTranslations(this._parent);
  String get subtitle => "Download complete, update available";
  TestNotificationsSettingsTranslations get test =>
      TestNotificationsSettingsTranslations(this);
  BasicNotificationsSettingsTranslations get basic =>
      BasicNotificationsSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      case 'test':
        return test;
      case 'basic':
        return basic;
      default:
        return key;
    }
  }
}

class TestNotificationsSettingsTranslations implements i69n.I69nMessageBundle {
  final NotificationsSettingsTranslations _parent;
  const TestNotificationsSettingsTranslations(this._parent);
  String get title => "Test Notification";
  String get subtitle => "Send a test notification";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class BasicNotificationsSettingsTranslations implements i69n.I69nMessageBundle {
  final NotificationsSettingsTranslations _parent;
  const BasicNotificationsSettingsTranslations(this._parent);
  String get title => "Basic Notification Settings";
  EnabledBasicNotificationsSettingsTranslations get enabled =>
      EnabledBasicNotificationsSettingsTranslations(this);
  VibrateBasicNotificationsSettingsTranslations get vibrate =>
      VibrateBasicNotificationsSettingsTranslations(this);
  SoundBasicNotificationsSettingsTranslations get sound =>
      SoundBasicNotificationsSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'enabled':
        return enabled;
      case 'vibrate':
        return vibrate;
      case 'sound':
        return sound;
      default:
        return key;
    }
  }
}

class EnabledBasicNotificationsSettingsTranslations
    implements i69n.I69nMessageBundle {
  final BasicNotificationsSettingsTranslations _parent;
  const EnabledBasicNotificationsSettingsTranslations(this._parent);
  String get title => "Enable Notifications";
  String get subtitle => "Receive notifications for updates and downloads";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class VibrateBasicNotificationsSettingsTranslations
    implements i69n.I69nMessageBundle {
  final BasicNotificationsSettingsTranslations _parent;
  const VibrateBasicNotificationsSettingsTranslations(this._parent);
  String get title => "Vibrate";
  String get subtitle => "Vibrate on notification";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class SoundBasicNotificationsSettingsTranslations
    implements i69n.I69nMessageBundle {
  final BasicNotificationsSettingsTranslations _parent;
  const SoundBasicNotificationsSettingsTranslations(this._parent);
  String get title => "Sound";
  String get subtitle => "Play a sound on notification";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class DataStorageSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const DataStorageSettingsTranslations(this._parent);
  String get subtitle => "Clear cache, manage storage location";
  StorageLocationDataStorageSettingsTranslations get storageLocation =>
      StorageLocationDataStorageSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      case 'storageLocation':
        return storageLocation;
      default:
        return key;
    }
  }
}

class StorageLocationDataStorageSettingsTranslations
    implements i69n.I69nMessageBundle {
  final DataStorageSettingsTranslations _parent;
  const StorageLocationDataStorageSettingsTranslations(this._parent);
  String get title => "Storage Location";
  String subtitle(String location) =>
      "${location.isEmpty ? 'Pick a storage location' : '$location'}";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class SecurityPrivacySettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const SecurityPrivacySettingsTranslations(this._parent);
  String get subtitle => "App lock, secure screen";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class AdvancedSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const AdvancedSettingsTranslations(this._parent);
  String get subtitle => "Developer options, experimental features";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class AboutSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const AboutSettingsTranslations(this._parent);
  VersionAboutSettingsTranslations get version =>
      VersionAboutSettingsTranslations(this);
  String get checkForUpdates => "Check for Updates";
  String get whatsNew => "What's New";
  String get licenses => "Open-Source Licenses";
  String get privacyPolicy => "Privacy Policy";
  LinksAboutSettingsTranslations get links =>
      LinksAboutSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'version':
        return version;
      case 'checkForUpdates':
        return checkForUpdates;
      case 'whatsNew':
        return whatsNew;
      case 'licenses':
        return licenses;
      case 'privacyPolicy':
        return privacyPolicy;
      case 'links':
        return links;
      default:
        return key;
    }
  }
}

class VersionAboutSettingsTranslations implements i69n.I69nMessageBundle {
  final AboutSettingsTranslations _parent;
  const VersionAboutSettingsTranslations(this._parent);
  String get title => "Version";
  String subtitle(String channel, String version) => "$channel v$version";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'subtitle':
        return subtitle;
      default:
        return key;
    }
  }
}

class LinksAboutSettingsTranslations implements i69n.I69nMessageBundle {
  final AboutSettingsTranslations _parent;
  const LinksAboutSettingsTranslations(this._parent);
  String get website => "Website";
  String get email => "Email";
  String get discord => "Discord";
  String get reportBug => "Report a Bug";
  String get github => "GitHub";
  String get kofi => "Ko-fi";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'website':
        return website;
      case 'email':
        return email;
      case 'discord':
        return discord;
      case 'reportBug':
        return reportBug;
      case 'github':
        return github;
      case 'kofi':
        return kofi;
      default:
        return key;
    }
  }
}

class ErrorTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const ErrorTranslations(this._parent);
  String get generic => "An error occurred";
  String get tryAgain => "Try Again";
  String get routeNotFound => "Route not found";
  String get workNotFound => "Work not found";
  String get chapterNotFound => "Chapter not found";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'generic':
        return generic;
      case 'tryAgain':
        return tryAgain;
      case 'routeNotFound':
        return routeNotFound;
      case 'workNotFound':
        return workNotFound;
      case 'chapterNotFound':
        return chapterNotFound;
      default:
        return key;
    }
  }
}
