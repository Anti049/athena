import 'package:athena/common_widgets/empty.dart';
import 'package:athena/common_widgets/loading_screen.dart';
import 'package:athena/features/banners/application/banner_provider.dart';
import 'package:athena/features/library/application/library_preferences.dart';
import 'package:athena/features/library/domain/library_tab_model.dart';
import 'package:athena/features/library/presentation/components/library_options_sheet.dart';
import 'package:athena/features/library/presentation/components/selection_bar.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:dartx/dartx.dart';

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
    await Future.delayed(const Duration(seconds: 1));
    final model = ref.read(libraryTabModelProvider.notifier);
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
                if (context.isCompact) {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    clipBehavior: Clip.antiAlias,
                    builder: (context) {
                      return const LibraryOptionsSheet();
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: context.atLeastLarge ? 640.0 : 480.0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const LibraryOptionsSheet(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 16.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: context.scheme.error,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Close'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
            MenuAnchor(
              controller: _menuController,
              menuChildren: [
                MenuItemButton(
                  onPressed: () {
                    _onRefresh();
                  },
                  child: Text(context.locale.libraryMenu.updateLibrary),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: Text(context.locale.libraryMenu.updateCategory),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: Text(context.locale.libraryMenu.randomWork),
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
            return Column(
              children: [
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return RefreshIndicator(
                          key: indicator,
                          onRefresh: _onRefresh,
                          child: data.searchQuery.isNullOrEmpty &&
                                  !data.hasActiveFilters &&
                                  data.library.isEmpty
                              ? SingleChildScrollView(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minHeight: constraints.maxHeight,
                                    ),
                                    child: Empty(
                                      message: context.locale.libraryEmpty,
                                    ),
                                  ),
                                )
                              : SingleChildScrollView(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minHeight: constraints.maxHeight,
                                    ),
                                    child: const Empty(
                                      message: "Library Not Yet Implemented",
                                    ),
                                  ),
                                ));
                    },
                  ),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: SelectionBar(
          visible: _selectionActive,
        ),
      ),
    );
  }
}
