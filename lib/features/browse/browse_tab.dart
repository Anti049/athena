import 'package:athena/common_widgets/padded_app_bar.dart';
import 'package:athena/features/banners/presentation/components/banner_scaffold.dart';
import 'package:athena/features/browse/models/tab_item.dart';
import 'package:athena/features/sources/sources_tab.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  static const String routeName = 'browse';

  @override
  Widget build(BuildContext context) {
    final tabItems = [
      TabItem(
        title: 'Sources',
        route: SourcesRoute(),
        actions: SourcesTab.actions,
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

        return BannerScaffold(
          appBar: PaddedAppBar(
            title: Text(context.locale.pages.browse.title),
            actions: tabItems[router.activeIndex].actions,
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
