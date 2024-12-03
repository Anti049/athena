import 'package:athena/features/browse/models/tab_item.dart';
import 'package:athena/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  static const String routeName = 'browse';

  @override
  Widget build(BuildContext context) {
    const tabItems = [
      TabItem(
        title: 'Sources',
        route: SourcesRoute(),
      ),
      TabItem(
        title: 'Extensions',
        route: ExtensionsRoute(),
      ),
      TabItem(
        title: 'Migrate',
        route: MigrateRoute(),
      ),
    ];

    return AutoTabsRouter.tabBar(
      routes: tabItems.map((item) => item.route).toList(),
      builder: (context, child, controller) {
        final router = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(router.current.title(context)),
            bottom: TabBar(
              controller: controller,
              tabs: tabItems.map((item) => item.tab).toList(),
            ),
          ),
          body: child,
        );
      },
    );
  }
}
