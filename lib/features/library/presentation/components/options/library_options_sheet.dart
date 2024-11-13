import 'package:athena/features/library/presentation/components/options/library_display_tab.dart';
import 'package:athena/features/library/presentation/components/options/library_filter_tab.dart';
import 'package:athena/features/library/presentation/components/options/library_sort_tab.dart';
import 'package:athena/features/library/presentation/components/options/animated_tab_controller.dart';
import 'package:athena/localization/translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryOptionsTab {
  String header;
  Widget body;

  LibraryOptionsTab({
    required this.header,
    required this.body,
  });
}

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
    // Call super
    super.initState();

    // Initialize tabs
    _tabs = [
      LibraryOptionsTab(
        header: 'filter',
        body: const LibraryFilterTab(),
      ),
      LibraryOptionsTab(
        header: 'sort',
        body: const LibrarySortTab(),
      ),
      LibraryOptionsTab(
        header: 'display',
        body: const LibraryDisplayTab(),
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
    final headers = getTabHeaders(context);

    final headerChildren =
        _tabs.map((tab) => Tab(text: headers[tab.header])).toList();
    final bodyChildren = _tabs.map((tab) => tab.body).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TabBar(
          controller: _tabController,
          tabs: headerChildren,
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
                    children: bodyChildren,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: TabBarView(
                controller: _tabController,
                children: bodyChildren
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
