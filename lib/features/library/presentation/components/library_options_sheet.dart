import 'package:athena/features/library/models/library_options_tab.dart';
import 'package:athena/features/library/presentation/components/animated_tab_controller.dart';
import 'package:athena/features/library/presentation/components/library_display_tab.dart';
import 'package:athena/features/library/presentation/components/library_filter_tab.dart';
import 'package:athena/features/library/presentation/components/library_sort_tab.dart';
import 'package:athena/utils/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class LibraryOptionsSheet extends ConsumerStatefulWidget {
  const LibraryOptionsSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LibraryOptionsSheetState();
}

class _LibraryOptionsSheetState extends ConsumerState<LibraryOptionsSheet>
    with TickerProviderStateMixin {
  // Tab controller
  late TabController _tabController;
  late List<LibraryOptionsTab> _tabs;

  @override
  void initState() {
    super.initState();

    // Initialize tabs
    _tabs = const [
      LibraryOptionsTab(
        title: 'filter',
        icon: Symbols.filter_alt,
        content: LibraryFilterTab(),
      ),
      LibraryOptionsTab(
        title: 'sort',
        icon: Symbols.sort,
        content: LibrarySortTab(),
      ),
      LibraryOptionsTab(
        title: 'display',
        icon: Symbols.dashboard,
        content: LibraryDisplayTab(),
      ),
    ];

    // Initialize tab controller
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  // Have to do this workaround since locale can't be accessed in initState
  Map<String, String> getTabHeaders(BuildContext context) {
    return {
      'filter': context.locale.library.options.filter.title,
      'sort': context.locale.library.options.sort.title,
      'display': context.locale.library.options.display.title,
    };
  }

  @override
  Widget build(BuildContext context) {
    // Do workaround to get headers from localization
    final headers = getTabHeaders(context);
    final tabHeaders = _tabs
        .map(
          (tab) => Tab(text: headers[tab.title]),
        )
        .toList();
    final tabBodies = _tabs.map((tab) => tab.content).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TabBar(
          controller: _tabController,
          tabs: tabHeaders,
        ),
        Stack(
          children: [
            Opacity(
              opacity: 0.0,
              child: AnimatedSize(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeOutExpo,
                child: SizedBox(
                  width: double.infinity, // always fill horizontally
                  child: AnimatedTabController(
                    tabController: _tabController,
                    children: tabBodies,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: TabBarView(
                controller: _tabController,
                children: tabBodies
                    .map(
                      (e) => OverflowBox(
                        alignment: Alignment.topCenter,
                        // avoid shrinkwrapping to animated height
                        minHeight: 0,
                        maxHeight: double.infinity,
                        child: e,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        )
      ],
    );
  }
}
