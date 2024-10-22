import 'package:athena/core/banner/banner_provider.dart';
import 'package:athena/core/notifications/notification_provider.dart';
import 'package:athena/core/notifications/notifications.dart';
import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/presentation/more/settings/components/preference_segmented_button.dart';
import 'package:athena/presentation/more/settings/components/theme_preview.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:athena/presentation/theme/prebuilt_themes.dart';
import 'package:athena/presentation/theme/prebuilt_themes/base_theme.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class LibraryTab extends ConsumerStatefulWidget {
  const LibraryTab({
    super.key,
    this.category,
  });

  final String? category;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LibraryTabState();
}

class _LibraryTabState extends ConsumerState<LibraryTab> {
  final TextEditingController _searchController = SearchController();
  final MenuController _menuController = MenuController();
  bool _searchActive = false;
  String _searchFilter = '';

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(notificationCountProvider);
    final preferencesNotifier = ref.watch(preferencesProvider.notifier);
    final preferences = ref.watch(preferencesProvider);
    final showingHeader = preferencesNotifier.showingHeaderBar();
    final columns = context.isCompact
        ? 3
        : context.isMedium
            ? 4
            : context.isExpanded
                ? 4
                : context.isLarge
                    ? 5
                    : 6;
    final rows = (prebuiltThemes.length / columns).ceil();
    final warningBanner = ref.watch(bannerProvider('warning').notifier);

    // If category exists, filter the themes by category
    final filteredThemes = prebuiltThemes.values.where((theme) {
      if (theme != null && _searchActive) {
        return theme.name.contains(_searchFilter);
      }
      return true;
    }).toList();

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
        primary: !showingHeader,
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
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
          primary: !showingHeader,
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
              icon: const Icon(Symbols.filter_list),
              onPressed: () {
                context.push('/error');
              },
            ),
            MenuAnchor(
              controller: _menuController,
              menuChildren: [
                MenuItemButton(
                  onPressed: () {
                    ref
                        .read(bannerProvider('indexing').notifier)
                        .toggleActive();
                  },
                  child: const Text('Update Library'),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: const Text('Update Category'),
                ),
                MenuItemButton(
                  onPressed: () {
                    notifier.showNotification(
                      const AppNotification(
                        title: 'Random Work',
                        description: 'This is a random work',
                        source: NotificationSource.library,
                      ),
                    );
                  },
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: PreferenceSegmentedButton(
                  value: preferences.themeMode,
                  options: [
                    PreferenceSegment(
                        value: ThemeMode.system,
                        label: context.locale.preferenceMode.system),
                    PreferenceSegment(
                        value: ThemeMode.light,
                        label: context.locale.preferenceMode.light),
                    PreferenceSegment(
                        value: ThemeMode.dark,
                        label: context.locale.preferenceMode.dark),
                  ],
                  onChanged: (newThemeMode) {
                    preferencesNotifier
                        .updateThemeMode(newThemeMode as ThemeMode);
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: LayoutGrid(
                  columnSizes: List.filled(columns, 1.fr),
                  rowSizes: List.filled(rows, auto),
                  columnGap: 0.0,
                  rowGap: 0.0,
                  children: const [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
