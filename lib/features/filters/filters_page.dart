import 'package:athena/common_widgets/empty.dart';
import 'package:athena/common_widgets/padded_app_bar.dart';
import 'package:athena/features/banners/presentation/components/banner_scaffold.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class FiltersPage extends ConsumerStatefulWidget {
  const FiltersPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FiltersPageState();
}

class _FiltersPageState extends ConsumerState<FiltersPage> {
  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBar: PaddedAppBar(
        title: Text('Filters'),
      ),
      body: const Empty(
        message: 'Filter Not Yet Implemented',
      ),
    );
  }
}
