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
  ActionTranslations get action => ActionTranslations(this);
  PagesTranslations get pages => PagesTranslations(this);
  ThemesTranslations get themes => ThemesTranslations(this);
  LibraryTranslations get library => LibraryTranslations(this);
  MoreTranslations get more => MoreTranslations(this);
  SettingsTranslations get settings => SettingsTranslations(this);
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
      case 'action':
        return action;
      case 'pages':
        return pages;
      case 'themes':
        return themes;
      case 'library':
        return library;
      case 'more':
        return more;
      case 'settings':
        return settings;
      default:
        return key;
    }
  }
}

class ActionTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const ActionTranslations(this._parent);
  String get ok => "OK";
  String get cancel => "Cancel";
  String get close => "Close";
  String get save => "Save";
  String get delete => "Delete";
  String get clear => "Clear";
  String get reset => "Reset";
  String get add => "Add";
  String get remove => "Remove";
  String get edit => "Edit";
  String get done => "Done";
  String get select => "Select";
  String get selectAll => "Select All";
  String get deselectAll => "Deselect All";
  String get invertSelection => "Invert Selection";
  String get refresh => "Refresh";
  String get retry => "Retry";
  String get search => "Search";
  String get filter => "Filter";
  String get sort => "Sort";
  String get share => "Share";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'ok':
        return ok;
      case 'cancel':
        return cancel;
      case 'close':
        return close;
      case 'save':
        return save;
      case 'delete':
        return delete;
      case 'clear':
        return clear;
      case 'reset':
        return reset;
      case 'add':
        return add;
      case 'remove':
        return remove;
      case 'edit':
        return edit;
      case 'done':
        return done;
      case 'select':
        return select;
      case 'selectAll':
        return selectAll;
      case 'deselectAll':
        return deselectAll;
      case 'invertSelection':
        return invertSelection;
      case 'refresh':
        return refresh;
      case 'retry':
        return retry;
      case 'search':
        return search;
      case 'filter':
        return filter;
      case 'sort':
        return sort;
      case 'share':
        return share;
      default:
        return key;
    }
  }
}

class PagesTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const PagesTranslations(this._parent);
  LibraryPagesTranslations get library => LibraryPagesTranslations(this);
  UpdatesPagesTranslations get updates => UpdatesPagesTranslations(this);
  HistoryPagesTranslations get history => HistoryPagesTranslations(this);
  BrowsePagesTranslations get browse => BrowsePagesTranslations(this);
  MorePagesTranslations get more => MorePagesTranslations(this);
  SettingsPagesTranslations get settings => SettingsPagesTranslations(this);
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
      default:
        return key;
    }
  }
}

class LibraryPagesTranslations implements i69n.I69nMessageBundle {
  final PagesTranslations _parent;
  const LibraryPagesTranslations(this._parent);
  String get title => "Library";
  OptionsLibraryPagesTranslations get options =>
      OptionsLibraryPagesTranslations(this);
  TagsLibraryPagesTranslations get tags => TagsLibraryPagesTranslations(this);
  FiltersLibraryPagesTranslations get filters =>
      FiltersLibraryPagesTranslations(this);
  SortLibraryPagesTranslations get sort => SortLibraryPagesTranslations(this);
  DisplayLibraryPagesTranslations get display =>
      DisplayLibraryPagesTranslations(this);
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
      case 'tags':
        return tags;
      case 'filters':
        return filters;
      case 'sort':
        return sort;
      case 'display':
        return display;
      default:
        return key;
    }
  }
}

class OptionsLibraryPagesTranslations implements i69n.I69nMessageBundle {
  final LibraryPagesTranslations _parent;
  const OptionsLibraryPagesTranslations(this._parent);
  String get title => "Options";
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

class TagsLibraryPagesTranslations implements i69n.I69nMessageBundle {
  final LibraryPagesTranslations _parent;
  const TagsLibraryPagesTranslations(this._parent);
  String get title => "Tags";
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

class FiltersLibraryPagesTranslations implements i69n.I69nMessageBundle {
  final LibraryPagesTranslations _parent;
  const FiltersLibraryPagesTranslations(this._parent);
  String get title => "Filters";
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

class SortLibraryPagesTranslations implements i69n.I69nMessageBundle {
  final LibraryPagesTranslations _parent;
  const SortLibraryPagesTranslations(this._parent);
  String get title => "Sort";
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

class DisplayLibraryPagesTranslations implements i69n.I69nMessageBundle {
  final LibraryPagesTranslations _parent;
  const DisplayLibraryPagesTranslations(this._parent);
  String get title => "Display";
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

class UpdatesPagesTranslations implements i69n.I69nMessageBundle {
  final PagesTranslations _parent;
  const UpdatesPagesTranslations(this._parent);
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

class HistoryPagesTranslations implements i69n.I69nMessageBundle {
  final PagesTranslations _parent;
  const HistoryPagesTranslations(this._parent);
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

class BrowsePagesTranslations implements i69n.I69nMessageBundle {
  final PagesTranslations _parent;
  const BrowsePagesTranslations(this._parent);
  String get title => "Browse";
  SourcesBrowsePagesTranslations get sources =>
      SourcesBrowsePagesTranslations(this);
  ExtensionsBrowsePagesTranslations get extensions =>
      ExtensionsBrowsePagesTranslations(this);
  MigrateBrowsePagesTranslations get migrate =>
      MigrateBrowsePagesTranslations(this);
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
      case 'migrate':
        return migrate;
      default:
        return key;
    }
  }
}

class SourcesBrowsePagesTranslations implements i69n.I69nMessageBundle {
  final BrowsePagesTranslations _parent;
  const SourcesBrowsePagesTranslations(this._parent);
  String get title => "Sources";
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

class ExtensionsBrowsePagesTranslations implements i69n.I69nMessageBundle {
  final BrowsePagesTranslations _parent;
  const ExtensionsBrowsePagesTranslations(this._parent);
  String get title => "Extensions";
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

class MigrateBrowsePagesTranslations implements i69n.I69nMessageBundle {
  final BrowsePagesTranslations _parent;
  const MigrateBrowsePagesTranslations(this._parent);
  String get title => "Migrate";
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

class MorePagesTranslations implements i69n.I69nMessageBundle {
  final PagesTranslations _parent;
  const MorePagesTranslations(this._parent);
  String get title => "More";
  DownloadQueueMorePagesTranslations get downloadQueue =>
      DownloadQueueMorePagesTranslations(this);
  CategoriesMorePagesTranslations get categories =>
      CategoriesMorePagesTranslations(this);
  StatisticsMorePagesTranslations get statistics =>
      StatisticsMorePagesTranslations(this);
  AboutMorePagesTranslations get about => AboutMorePagesTranslations(this);
  HelpMorePagesTranslations get help => HelpMorePagesTranslations(this);
  FeedbackMorePagesTranslations get feedback =>
      FeedbackMorePagesTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'downloadQueue':
        return downloadQueue;
      case 'categories':
        return categories;
      case 'statistics':
        return statistics;
      case 'about':
        return about;
      case 'help':
        return help;
      case 'feedback':
        return feedback;
      default:
        return key;
    }
  }
}

class DownloadQueueMorePagesTranslations implements i69n.I69nMessageBundle {
  final MorePagesTranslations _parent;
  const DownloadQueueMorePagesTranslations(this._parent);
  String get title => "Download Queue";
  String subtitle(String status, int downloads) =>
      "${_plural(downloads, zero: '', one: '$status ($downloads download)', other: '$status ($downloads downloads)')}";
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

class CategoriesMorePagesTranslations implements i69n.I69nMessageBundle {
  final MorePagesTranslations _parent;
  const CategoriesMorePagesTranslations(this._parent);
  String get title => "Categories";
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

class StatisticsMorePagesTranslations implements i69n.I69nMessageBundle {
  final MorePagesTranslations _parent;
  const StatisticsMorePagesTranslations(this._parent);
  String get title => "Statistics";
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

class AboutMorePagesTranslations implements i69n.I69nMessageBundle {
  final MorePagesTranslations _parent;
  const AboutMorePagesTranslations(this._parent);
  String get title => "About";
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

class HelpMorePagesTranslations implements i69n.I69nMessageBundle {
  final MorePagesTranslations _parent;
  const HelpMorePagesTranslations(this._parent);
  String get title => "Help";
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

class FeedbackMorePagesTranslations implements i69n.I69nMessageBundle {
  final MorePagesTranslations _parent;
  const FeedbackMorePagesTranslations(this._parent);
  String get title => "Feedback";
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

class SettingsPagesTranslations implements i69n.I69nMessageBundle {
  final PagesTranslations _parent;
  const SettingsPagesTranslations(this._parent);
  String get title => "Settings";
  AppearanceSettingsPagesTranslations get appearance =>
      AppearanceSettingsPagesTranslations(this);
  LibrarySettingsPagesTranslations get library =>
      LibrarySettingsPagesTranslations(this);
  AccountsSettingsPagesTranslations get accounts =>
      AccountsSettingsPagesTranslations(this);
  ReaderSettingsPagesTranslations get reader =>
      ReaderSettingsPagesTranslations(this);
  DownloadsSettingsPagesTranslations get downloads =>
      DownloadsSettingsPagesTranslations(this);
  TrackingSettingsPagesTranslations get tracking =>
      TrackingSettingsPagesTranslations(this);
  BrowseSettingsPagesTranslations get browse =>
      BrowseSettingsPagesTranslations(this);
  NotificationsSettingsPagesTranslations get notifications =>
      NotificationsSettingsPagesTranslations(this);
  DataStorageSettingsPagesTranslations get dataStorage =>
      DataStorageSettingsPagesTranslations(this);
  SecurityPrivacySettingsPagesTranslations get securityPrivacy =>
      SecurityPrivacySettingsPagesTranslations(this);
  AdvancedSettingsPagesTranslations get advanced =>
      AdvancedSettingsPagesTranslations(this);
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
      case 'accounts':
        return accounts;
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
      default:
        return key;
    }
  }
}

class AppearanceSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const AppearanceSettingsPagesTranslations(this._parent);
  String get title => "Appearance";
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

class LibrarySettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const LibrarySettingsPagesTranslations(this._parent);
  String get title => "Library";
  EditCategoriesLibrarySettingsPagesTranslations get editCategories =>
      EditCategoriesLibrarySettingsPagesTranslations(this);
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
      default:
        return key;
    }
  }
}

class EditCategoriesLibrarySettingsPagesTranslations
    implements i69n.I69nMessageBundle {
  final LibrarySettingsPagesTranslations _parent;
  const EditCategoriesLibrarySettingsPagesTranslations(this._parent);
  String get title => "Edit Categories";
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

class AccountsSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const AccountsSettingsPagesTranslations(this._parent);
  String get title => "Accounts";
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

class ReaderSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const ReaderSettingsPagesTranslations(this._parent);
  String get title => "Reader";
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

class DownloadsSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const DownloadsSettingsPagesTranslations(this._parent);
  String get title => "Downloads";
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

class TrackingSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const TrackingSettingsPagesTranslations(this._parent);
  String get title => "Tracking";
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

class BrowseSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const BrowseSettingsPagesTranslations(this._parent);
  String get title => "Browse";
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

class NotificationsSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const NotificationsSettingsPagesTranslations(this._parent);
  String get title => "Notifications";
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

class DataStorageSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const DataStorageSettingsPagesTranslations(this._parent);
  String get title => "Data Storage";
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

class SecurityPrivacySettingsPagesTranslations
    implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const SecurityPrivacySettingsPagesTranslations(this._parent);
  String get title => "Security & Privacy";
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

class AdvancedSettingsPagesTranslations implements i69n.I69nMessageBundle {
  final SettingsPagesTranslations _parent;
  const AdvancedSettingsPagesTranslations(this._parent);
  String get title => "Advanced";
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

class LibraryTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LibraryTranslations(this._parent);
  String get searchHint => "Search...";
  String get empty => "No works found";
  MenuLibraryTranslations get menu => MenuLibraryTranslations(this);
  OptionsLibraryTranslations get options => OptionsLibraryTranslations(this);
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
      case 'menu':
        return menu;
      case 'options':
        return options;
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
  String get librarySettings => "Library Settings";
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
      case 'librarySettings':
        return librarySettings;
      default:
        return key;
    }
  }
}

class OptionsLibraryTranslations implements i69n.I69nMessageBundle {
  final LibraryTranslations _parent;
  const OptionsLibraryTranslations(this._parent);
  TagsOptionsLibraryTranslations get tags =>
      TagsOptionsLibraryTranslations(this);
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
      case 'tags':
        return tags;
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

class TagsOptionsLibraryTranslations implements i69n.I69nMessageBundle {
  final OptionsLibraryTranslations _parent;
  const TagsOptionsLibraryTranslations(this._parent);
  String get title => "Tags";
  String get fandoms => "Fandoms";
  String get characters => "Characters";
  String get relationships => "Relationships";
  String get ratings => "Ratings";
  String get genres => "Genres";
  String get additionalTags => "Additional Tags";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'fandoms':
        return fandoms;
      case 'characters':
        return characters;
      case 'relationships':
        return relationships;
      case 'ratings':
        return ratings;
      case 'genres':
        return genres;
      case 'additionalTags':
        return additionalTags;
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
  GridSizeDisplayOptionsLibraryTranslations get gridSize =>
      GridSizeDisplayOptionsLibraryTranslations(this);
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

class GridSizeDisplayOptionsLibraryTranslations
    implements i69n.I69nMessageBundle {
  final DisplayOptionsLibraryTranslations _parent;
  const GridSizeDisplayOptionsLibraryTranslations(this._parent);
  String get title => "Grid Size";
  String subtitle(int size) =>
      "${_plural(size, zero: 'Default', other: '$size per row')}";
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

class OverlayDisplayOptionsLibraryTranslations
    implements i69n.I69nMessageBundle {
  final DisplayOptionsLibraryTranslations _parent;
  const OverlayDisplayOptionsLibraryTranslations(this._parent);
  String get title => "Overlay";
  String get downloadedChapters => "Downloaded Chapters";
  String get unreadChapters => "Unread Chapters";
  String get localSource => "Local Source";
  String get language => "Language";
  String get source => "Source";
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
      case 'source':
        return source;
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
  String get genre => "Show Favorite Tabs";
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
      case 'genre':
        return genre;
      case 'number':
        return number;
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
  AboutMoreTranslations get about => AboutMoreTranslations(this);
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
      case 'about':
        return about;
      default:
        return key;
    }
  }
}

class DownloadedOnlyMoreTranslations implements i69n.I69nMessageBundle {
  final MoreTranslations _parent;
  const DownloadedOnlyMoreTranslations(this._parent);
  String get title => "Downloaded Only";
  String get subtitle => "Show only downloaded works";
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
  String get subtitle => "Pause reading history";
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

class AboutMoreTranslations implements i69n.I69nMessageBundle {
  final MoreTranslations _parent;
  const AboutMoreTranslations(this._parent);
  String subtitle(String channel, String version) => "Athena $channel $version";
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

class SettingsTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const SettingsTranslations(this._parent);
  SearchSettingsTranslations get search => SearchSettingsTranslations(this);
  AppearanceSettingsTranslations get appearance =>
      AppearanceSettingsTranslations(this);
  LibrarySettingsTranslations get library => LibrarySettingsTranslations(this);
  AccountsSettingsTranslations get accounts =>
      AccountsSettingsTranslations(this);
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
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'search':
        return search;
      case 'appearance':
        return appearance;
      case 'library':
        return library;
      case 'accounts':
        return accounts;
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
      default:
        return key;
    }
  }
}

class SearchSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const SearchSettingsTranslations(this._parent);
  String get hint => "Search settings...";
  String get recent => "Recent searches";
  String get noResults => "No results found";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'hint':
        return hint;
      case 'recent':
        return recent;
      case 'noResults':
        return noResults;
      default:
        return key;
    }
  }
}

class AppearanceSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const AppearanceSettingsTranslations(this._parent);
  String get subtitle => "Theme, font, language, and more";
  String get theme => "Theme";
  ModeAppearanceSettingsTranslations get mode =>
      ModeAppearanceSettingsTranslations(this);
  String get blendLevel => "Blend Level";
  ThemeSelectionAppearanceSettingsTranslations get themeSelection =>
      ThemeSelectionAppearanceSettingsTranslations(this);
  PureBlackAppearanceSettingsTranslations get pureBlack =>
      PureBlackAppearanceSettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'subtitle':
        return subtitle;
      case 'theme':
        return theme;
      case 'mode':
        return mode;
      case 'blendLevel':
        return blendLevel;
      case 'themeSelection':
        return themeSelection;
      case 'pureBlack':
        return pureBlack;
      default:
        return key;
    }
  }
}

class ModeAppearanceSettingsTranslations implements i69n.I69nMessageBundle {
  final AppearanceSettingsTranslations _parent;
  const ModeAppearanceSettingsTranslations(this._parent);
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

class ThemeSelectionAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final AppearanceSettingsTranslations _parent;
  const ThemeSelectionAppearanceSettingsTranslations(this._parent);
  String get title => "Theme Selection";
  String count(int count) =>
      "${_plural(count, zero: 'No themes', one: '1 theme', other: '$count themes')}";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'count':
        return count;
      default:
        return key;
    }
  }
}

class PureBlackAppearanceSettingsTranslations
    implements i69n.I69nMessageBundle {
  final AppearanceSettingsTranslations _parent;
  const PureBlackAppearanceSettingsTranslations(this._parent);
  String get title => "Pure Black";
  String get subtitle => "Use pure black background for dark theme";
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
  AutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations
      get automaticUpdates =>
          AutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'automaticUpdates':
        return automaticUpdates;
      default:
        return key;
    }
  }
}

class AutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations
    implements i69n.I69nMessageBundle {
  final GlobalUpdatesLibrarySettingsTranslations _parent;
  const AutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations(this._parent);
  String get title => "Automatic Updates";
  String subtitle(String selection) =>
      "${selection.isEmpty ? 'Disabled' : selection}";
  ChoicesAutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations get choices =>
      ChoicesAutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations(this);
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
      case 'choices':
        return choices;
      default:
        return key;
    }
  }
}

class ChoicesAutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations
    implements i69n.I69nMessageBundle {
  final AutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations _parent;
  const ChoicesAutomaticUpdatesGlobalUpdatesLibrarySettingsTranslations(
      this._parent);
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

class AccountsSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const AccountsSettingsTranslations(this._parent);
  String get subtitle => "Manage accounts, login, logout";
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
