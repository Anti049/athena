import 'package:athena/common/presentation/empty.dart';
import 'package:athena/common/presentation/padded_app_bar.dart';
import 'package:athena/features/banners/presentation/components/banner_scaffold.dart';
import 'package:athena/features/library/presentation/components/library_options_sheet.dart';
import 'package:athena/features/library/presentation/library_state.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
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
    with
        AutomaticKeepAliveClientMixin<LibraryTab>,
        TickerProviderStateMixin<LibraryTab> {
  @override
  bool get wantKeepAlive => true;

  bool _searchActive = false;
  bool _selectionActive = false;
  late TabController _tabController;
  bool showFilterDrawer = false;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  IconButton? _getLeading(BuildContext context) {
    if (_searchActive) {
      return IconButton(
        icon: const Icon(Symbols.close),
        onPressed: () {
          setState(() {
            _searchActive = false;
          });
        },
      );
    }

    if (_selectionActive) {
      return IconButton(
        icon: const Icon(Symbols.close),
        onPressed: () {
          setState(() {
            _selectionActive = false;
          });
        },
      );
    }

    return null;
  }

  List<Widget> _getActions(BuildContext context) {
    final router = AutoRouter.of(context);
    final optionsActive = ref.watch(libraryPreferencesProvider).optionsActive;

    if (_selectionActive) {
      return [
        // Select All
        IconButton(
          icon: const Icon(Symbols.select_all),
          onPressed: () {},
        ),
        // Invert Selection
        IconButton(
          icon: const Icon(Symbols.flip_to_back),
          onPressed: () {},
        ),
      ];
    }
    return [
      if (!_searchActive)
        IconButton(
          icon: const Icon(Symbols.search),
          onPressed: () {
            setState(() {
              _searchActive = true;
            });
          },
        ),
      IconButton(
        icon: Icon(
          Symbols.filter_alt,
          color: optionsActive ? context.extended.warning : null,
        ),
        onPressed: () {
          // showOptions(context);
          router.push(const FilterSortRoute());
        },
      ),
      const SizedBox(),
      IconButton(
        icon: const Icon(Symbols.refresh),
        onPressed: () {},
        tooltip: context.locale.library.menu.updateLibrary,
      ),
      IconButton(
        icon: const Icon(Symbols.refresh),
        onPressed: () {},
        tooltip: context.locale.library.menu.updateCategory,
      ),
      IconButton(
        icon: const Icon(Symbols.shuffle),
        onPressed: () {},
        tooltip: context.locale.library.menu.randomWork,
      ),
      const Divider(),
      IconButton(
        icon: const Icon(Symbols.settings),
        onPressed: () {
          router.push(const LibrarySettingsRoute());
        },
        tooltip: context.locale.library.menu.librarySettings,
      ),
    ];
  }

  void showOptions(BuildContext context) {
    if (context.isCompact) {
      showModalBottomSheet(
        context: context,
        builder: (context) => const LibraryOptionsSheet(),
        isScrollControlled: true,
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
    final libraryState = ref.watch(libraryStateProvider);
    final libraryNotifier = ref.read(libraryStateProvider.notifier);
    final preferences = ref.watch(libraryPreferencesProvider);

    // Handle actions
    refreshAction() {
      libraryNotifier.refresh();
    }

    return PopScope(
      canPop: !_searchActive,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          setState(() {
            _searchActive = false;
          });
        }
      },
      child: BannerScaffold(
        appBar: PaddedAppBar(
          title: _searchActive
              ? TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: context.locale.library.searchHint,
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    libraryNotifier.search(value);
                    libraryNotifier.refresh();
                  },
                )
              : _selectionActive
                  ? Text('1')
                  : Row(
                      children: [
                        Text(context.locale.pages.library.title),
                        const SizedBox(width: 8.0),
                        if (preferences.showWorkCount().get())
                          Chip(
                            label: Text(
                              libraryState.asData?.value.libraryItems.length
                                      .toString() ??
                                  '0',
                            ), // TODO: Implement total count for library
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            backgroundColor:
                                context.scheme.surfaceContainerHighest,
                            labelStyle: context.text.labelLarge?.copyWith(
                              color: context.scheme.onSurfaceVariant,
                            ),
                            side: const BorderSide(color: Colors.transparent),
                            labelPadding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                              vertical: 0.0,
                            ),
                          ),
                      ],
                    ),
          leading: _getLeading(context),
          actions: _getActions(context),
          bottom: preferences.showCategoryTabs().get()
              ? TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'Default'),
                    Tab(text: 'Category 1'),
                    Tab(text: 'Category 2'),
                  ],
                  // isScrollable: true,
                  // tabAlignment: TabAlignment.start,
                )
              : null,
        ),
        body: libraryState.when(
          loading: () => const Empty(message: 'Loading...'),
          error: (error, stackTrace) {
            debugPrintStack(
              label: error.toString(),
              stackTrace: stackTrace,
            );
            return Empty(
              message: error.toString(),
            );
          },
          data: (model) {
            return model.isEmpty
                ? Empty(message: 'No items found')
                : Empty(
                    message: (model.libraryItems.map((s) => s.story.title))
                        .join('\n'),
                  );
          },
        ),
      ),
    );
  }
}
