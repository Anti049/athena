import 'package:athena/common_widgets/empty.dart';
import 'package:athena/common_widgets/loading_screen.dart';
import 'package:athena/features/banners/providers/banner_provider.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/library/models/library_tab_model.dart';
import 'package:athena/features/library/presentation/components/app_bars/responsive_app_bar.dart';
import 'package:athena/features/library/presentation/components/items/library_item_compact.dart';
import 'package:athena/features/library/presentation/components/options/library_options_sheet.dart';
import 'package:athena/features/library/presentation/components/selection_bar.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
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

  bool _searchActive = false;
  final MenuController _menuController = MenuController();

  @override
  void initState() {
    // Start scheduled task to refresh every minute
    // final model = ref.read(libraryTabModelProvider.notifier);
    // model.refresh();

    super.initState();
  }

  Future<void> _onRefresh() async {
    final model = ref.read(libraryTabModelProvider.notifier);
    model.refresh();
  }

  void showOptions(BuildContext context) {
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
                const Divider(height: 0.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 8.0,
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: context.scheme.secondary,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          context.locale.action.reset,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: context.scheme.error,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          context.locale.action.close,
                        ),
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
        appBar: ResponsiveAppBar(
          actions: [
            IconButton(
              icon: Icon(
                Symbols.filter_list,
                color: preferences.anyFiltersActive()
                    ? context.extended.warning
                    : null,
              ),
              onPressed: () {
                showOptions(context);
              },
            ),
            MenuAnchor(
              controller: _menuController,
              menuChildren: [
                MenuItemButton(
                  onPressed: () {
                    _onRefresh();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(context.locale.library.menu.updateLibrary),
                  ),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(context.locale.library.menu.updateCategory),
                  ),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(context.locale.library.menu.randomWork),
                  ),
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
          ],
          searchActive: _searchActive,
          onToggleSearch: () {
            setState(() {
              _searchActive = !_searchActive;
            });
          },
          onCancelSearch: () {
            setState(() {
              _searchActive = false;
            });
          },
          onSearch: (query) {
            model.search(query);
            model.refresh();
          },
          selectionActive: state.maybeWhen(
            data: (data) => data.selectionMode,
            orElse: () => false,
          ),
          selectedCount: state.maybeWhen(
            data: (data) => data.selectionCount,
            orElse: () => 0,
          ),
          onCancelSelection: () {
            model.clearSelection();
          },
          onSelectAll: () {
            model.selectAll(0);
          },
          onInvertSelection: () {
            model.invertSelection(0);
          },
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
            final numColumns = context.isCompact
                ? 2
                : context.atLeastLarge
                    ? 4
                    : 3;
            final numRows =
                ((data.library[0]?.length ?? 0) / numColumns).ceilToDouble();

            final columnSizes = List.generate(
              numColumns,
              (index) => 1.fr,
            );
            final rowSizes = [
              ...List.generate(
                numRows.ceil(),
                (index) => auto,
              ),
              1.fr,
            ];

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
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minHeight: constraints.maxHeight,
                                  ),
                                  child: Empty(
                                    message: context.locale.library.empty,
                                  ),
                                ),
                              )
                            : SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: LayoutGrid(
                                    columnSizes: columnSizes,
                                    rowSizes: rowSizes,
                                    rowGap: 4.0,
                                    columnGap: 4.0,
                                    children: data.library[0]?.map((item) {
                                          return LibraryItemCompact(
                                            libraryItem: item,
                                            selected: data.isSelected(
                                              item.libraryWork,
                                            ),
                                            onTap: () {
                                              if (data.selectionMode) {
                                                model.toggleSelection(
                                                  item.libraryWork,
                                                );
                                              }
                                            },
                                            onHold: () {
                                              if (!data.selectionMode) {
                                                model.toggleSelection(
                                                  item.libraryWork,
                                                );
                                              } else {
                                                model.toggleRangeSelection(
                                                  item.libraryWork,
                                                );
                                              }
                                            },
                                            onSecondaryTap: () {
                                              // Show info dialog
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                      item.libraryWork.work
                                                          .title,
                                                    ),
                                                    content: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          item.libraryWork.work
                                                              .author,
                                                        ),
                                                        Text(
                                                          item.libraryWork.work
                                                              .description,
                                                        ),
                                                      ],
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(context
                                                            .locale
                                                            .action
                                                            .close),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        }).toList() ??
                                        [],
                                  ),
                                ),
                              ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: SelectionBar(
          visible: state.maybeWhen(
            data: (data) => data.selectionMode,
            orElse: () => false,
          ),
        ),
      ),
    );
  }
}

extension Range on int {
  List<int> to(int end) {
    final list = <int>[];
    for (var i = this; i <= end; i++) {
      list.add(i);
    }
    return list;
  }
}
