import 'package:animated_visibility/animated_visibility.dart';
import 'package:athena/common_widgets/empty.dart';
import 'package:athena/features/library/application/library_preferences.dart';
import 'package:athena/features/library/presentation/components/selection_bar.dart';
import 'package:athena/features/library/presentation/shrink_wrapping_tab_bar_view.dart';
import 'package:athena/features/settings/application/base_preferences.dart';
import 'package:athena/features/settings/presentation/components/checkbox_preference_widget.dart';
import 'package:athena/features/settings/presentation/components/text_preference_widget.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class LibraryTab extends ConsumerStatefulWidget {
  const LibraryTab({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LibraryTabState();
}

class _LibraryTabState extends ConsumerState<LibraryTab>
    with TickerProviderStateMixin {
  final TextEditingController _searchController = SearchController();
  final MenuController _menuController = MenuController();
  bool _searchActive = false;
  String _searchFilter = '';
  late final TabController _tabController;
  bool _selectionActive = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  Widget _buildFilterTab(BuildContext context) {
    final preferences = ref.watch(libraryPreferencesProvider);
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.downloaded,
          preference: preferences.filterDownloaded(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.unread,
          preference: preferences.filterUnread(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.started,
          preference: preferences.filterStarted(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.completed,
          preference: preferences.filterCompleted(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.bookmarked,
          preference: preferences.filterBookmarked(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.updated,
          preference: preferences.filterUpdated(),
          widgetLeading: true,
        ),
      ],
    );
  }

  Widget _buildSortTab(BuildContext context) {
    final preferences = ref.watch(libraryPreferencesProvider);
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: SortBy.values
          .map(
            (s) => TextPreferenceWidget(
              title: context.locale.libraryOptionsSort[s.name].toString(),
              icon: preferences.sortBy().get() == s
                  ? preferences.sortDirection().get()
                      ? Icons.arrow_downward
                      : Icons.arrow_upward
                  : null,
              onPreferenceClick: () {
                if (preferences.sortBy().get() == s) {
                  preferences
                      .sortDirection()
                      .set(!preferences.sortDirection().get());
                } else {
                  preferences.sortBy().set(s);
                }
              },
              forceIcon: true,
              dense: true,
            ),
          )
          .toList(),
    );
  }

  Widget _buildDisplayTab(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(context.locale.libraryOptionsFilter.downloaded),
          onTap: () {},
          leading: Checkbox(
            tristate: true,
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: Text(context.locale.libraryOptionsFilter.unread),
          onTap: () {},
          leading: Checkbox(
            tristate: true,
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: Text(context.locale.libraryOptionsFilter.started),
          onTap: () {},
          leading: Checkbox(
            tristate: true,
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: Text(context.locale.libraryOptionsFilter.completed),
          onTap: () {},
          leading: Checkbox(
            tristate: true,
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: Text(context.locale.libraryOptionsFilter.bookmarked),
          onTap: () {},
          leading: Checkbox(
            tristate: true,
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: Text(context.locale.libraryOptionsFilter.updated),
          onTap: () {},
          leading: Checkbox(
            tristate: true,
            value: false,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    final tabHeaders = [
      context.locale.libraryOptionsFilter.header,
      context.locale.libraryOptionsSort.header,
      context.locale.libraryOptionsDisplay.header,
    ];
    final tabBodies = [
      _buildFilterTab(context),
      _buildSortTab(context),
      _buildDisplayTab(context),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TabBar(
          controller: _tabController,
          onTap: (value) =>
              ref.read(libraryPreferencesProvider).activeTab = value,
          tabs: tabHeaders.map((tabHeader) => Tab(text: tabHeader)).toList(),
        ),
        ShrinkWrappingTabBarView(
          tabController: _tabController,
          children: tabBodies,
        ),
      ],
    );
  }

  Widget _buildSelectionBar(BuildContext context) {
    return BottomAppBar(
      color: context.scheme.surfaceContainerLow,
      height: 56.0,
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Symbols.label),
            tooltip: context.locale.librarySelectionMenu.categorizeSelected,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Symbols.done_all),
            tooltip: context.locale.librarySelectionMenu.markAsRead,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Symbols.remove_done),
            tooltip: context.locale.librarySelectionMenu.markAsUnread,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Symbols.download),
            tooltip: context.locale.librarySelectionMenu.downloadAll,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Symbols.delete),
            tooltip: context.locale.librarySelectionMenu.delete,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get preferences
    final preferences = ref.watch(libraryPreferencesProvider);
    final basePreferences = ref.watch(basePreferencesProvider);
    final downloadedOnly = basePreferences.downloadedOnly().get();
    final incognitoMode = basePreferences.incognitoMode().get();
    final showingBanner = downloadedOnly || incognitoMode;

    return PopScope(
      canPop: !_searchActive,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          setState(() {
            _searchActive = false;
          });
        }
      },
      child: Scaffold(
        extendBody: !_searchActive,
        primary: !showingBanner,
        appBar: AppBar(
          primary: !showingBanner,
          automaticallyImplyLeading: !kIsWeb,
          leading: _searchActive
              ? IconButton(
                  icon: const Icon(Symbols.arrow_back),
                  onPressed: () {
                    setState(() {
                      _searchActive = false;
                    });
                    // Focus the search field
                  },
                )
              : null,
          title: _searchActive
              ? TextField(
                  autofocus: true,
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: context.locale.librarySearchHint,
                    border: InputBorder.none,
                    hintStyle: context.textTheme.bodyLarge?.copyWith(
                      color: context.scheme.onSurfaceVariant,
                    ),
                  ),
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.scheme.onSurface,
                  ),
                  onChanged: (value) {
                    // Filter the themes by search value
                    setState(() {
                      _searchFilter = value;
                    });
                  },
                )
              : Text(context.locale.labelLibrary),
          actions: [
            if (!_searchActive)
              IconButton(
                icon: const Icon(Symbols.search),
                onPressed: () {
                  setState(() {
                    _searchActive = !_searchActive;
                  });
                  // context.push('/library/green', extra: 'blue');
                },
              ),
            IconButton(
              icon: Icon(
                Symbols.filter_list,
                color: preferences.anyFiltersActive()
                    ? context.theme.extended.warning
                    : null,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return _buildBottomSheet(context);
                  },
                );
              },
            ),
            MenuAnchor(
              controller: _menuController,
              menuChildren: [
                MenuItemButton(
                  onPressed: () {},
                  child: const Text('Update Library'),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: const Text('Update Category'),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: const Text('Open Random Work'),
                ),
              ],
              child: IconButton(
                onPressed: () {
                  _menuController.isOpen
                      ? _menuController.close()
                      : _menuController.open();
                },
                icon: const Icon(Symbols.more_vert),
              ),
            ),
            const SizedBox(width: 8.0),
          ],
        ),
        body: Empty(
          message: 'Library Not Yet Implemented',
          actions: [
            EmptyAction(
              text: 'Send a test notification',
              icon: const Icon(
                Symbols.notifications,
                fill: 1.0,
              ),
              onPressed: () {
                // AwesomeNotifications().createNotification(
                //   content: NotificationContent(
                //     id: 10,
                //     channelKey: 'basic_channel',
                //     title: 'Test Notification',
                //     body: 'This is a test notification',
                //   ),
                // );
                setState(() => _selectionActive = !_selectionActive);
              },
            ),
          ],
        ),
        bottomNavigationBar: SelectionBar(
          visible: _selectionActive,
        ),
      ),
    );
  }
}
