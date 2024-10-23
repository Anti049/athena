import 'package:athena/features/library/presentation/components/library_display_tab.dart';
import 'package:athena/features/library/presentation/components/library_filter_tab.dart';
import 'package:athena/features/library/presentation/components/library_sort_tab.dart';
import 'package:athena/features/library/presentation/shrink_wrapping_tab_bar_view.dart';
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
      'filter': context.locale.libraryOptionsFilter.header,
      'sort': context.locale.libraryOptionsSort.header,
      'display': context.locale.libraryOptionsDisplay.header,
    };
  }

  @override
  Widget build(BuildContext context) {
    final headers = getTabHeaders(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TabBar(
          controller: _tabController,
          tabs: _tabs.map((tab) => Tab(text: headers[tab.header])).toList(),
        ),
        ShrinkWrappingTabBarView(
          tabController: _tabController,
          children: _tabs.map((tab) => tab.body).toList(),
        ),
      ],
    );
  }
}
