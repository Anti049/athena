import 'package:athena/common/presentation/empty.dart';
import 'package:athena/common/presentation/padded_app_bar.dart';
import 'package:athena/features/banners/presentation/components/banner_scaffold.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class StatisticsScreen extends ConsumerWidget {
  const StatisticsScreen({super.key});

  static const String routeName = 'statistics';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BannerScaffold(
      appBar: PaddedAppBar(
        title: Text(context.locale.pages.more.statistics.title),
      ),
      body: const Empty(
        message: 'Statistics Not Yet Implemented',
      ),
    );
  }
}
