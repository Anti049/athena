import 'package:athena/common_widgets/empty.dart';
import 'package:athena/common_widgets/loading_screen.dart';
import 'package:athena/features/banners/application/banner_provider.dart';
import 'package:athena/features/library/application/library_preferences.dart';
import 'package:athena/features/library/domain/library_tab_model.dart';
import 'package:athena/features/library/presentation/components/library_options_sheet.dart';
import 'package:athena/features/library/presentation/components/selection_bar.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

final indicator = GlobalKey<RefreshIndicatorState>();

@RoutePage()
class LibraryTab extends ConsumerStatefulWidget {
  const LibraryTab({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LibraryTabState();
}

class _LibraryTabState extends ConsumerState<LibraryTab>
    with AutomaticKeepAliveClientMixin<LibraryTab> {
  @override
  bool get wantKeepAlive => true;

  final TextEditingController _searchController = SearchController();
  bool _searchActive = false;
  final MenuController _menuController = MenuController();
  final bool _selectionActive = false;

  Future<void> _onRefresh() async {
    final model = ref.watch(libraryTabModelProvider.notifier);
    model.refresh();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // Get preferences
    final preferences = ref.watch(libraryPreferencesProvider);
    final state = ref.watch(libraryTabModelProvider);
    final model = ref.watch(libraryTabModelProvider.notifier);
    final bannerData = ref.watch(bannerProvider);
    final bannerNotifier = ref.watch(bannerProvider.notifier);

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
        primary: !bannerData.active,
        appBar: AppBar(
          primary: !bannerData.active,
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
                    hintStyle: context.text.bodyLarge?.copyWith(
                      color: context.scheme.onSurfaceVariant,
                    ),
                  ),
                  style: context.text.bodyLarge?.copyWith(
                    color: context.scheme.onSurface,
                  ),
                  onChanged: (value) {
                    model.search(value);
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
                    ? context.extended.warning
                    : null,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  clipBehavior: Clip.antiAlias,
                  builder: (context) {
                    return const LibraryOptionsSheet();
                  },
                );
              },
            ),
            MenuAnchor(
              controller: _menuController,
              menuChildren: [
                MenuItemButton(
                  onPressed: () {
                    _onRefresh();
                  },
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
        body: state.when(
          loading: () {
            return const LoadingScreen();
          },
          error: (error, stackTrace) {
            debugPrintStack(
              label: error.toString(),
              stackTrace: stackTrace,
            );
            return RefreshIndicator(
              key: indicator,
              onRefresh: _onRefresh,
              child: ListView(
                children: const [
                  Empty(
                    message: 'An error has occurred!',
                  ),
                ],
              ),
            );
          },
          data: (data) {
            return RefreshIndicator(
              key: indicator,
              onRefresh: _onRefresh,
              child: data.library.isNotEmpty
                  ? const Empty(
                      message: 'Library Not Yet Implemented',
                    )
                  : const Empty(
                      message: 'No Works Found',
                    ),
            );
            // if (data.searchQuery.isNullOrEmpty &&
            //     !data.hasActiveFilters &&
            //     data.library.isEmpty) {
            //   return const Empty(
            //     message: 'No Works Found',
            //   );
            // }
            // return const Empty(
            //   message: 'Library Not Yet Implemented',
            // );
          },
        ),
        bottomNavigationBar: SelectionBar(
          visible: _selectionActive,
        ),
      ),
    );
  }
}
