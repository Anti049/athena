import 'package:athena/features/library/data/enums.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/settings/presentation/components/text_setting.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class SortTab extends ConsumerStatefulWidget {
  const SortTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SortTabState();
}

class _SortTabState extends ConsumerState<SortTab> {
  @override
  Widget build(BuildContext context) {
    final preferences = ref.watch(libraryPreferencesProvider);
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: SortBy.values
          .map(
            (s) => TextSettingWidget(
              title: context.locale.library.options.sort[s.name].toString(),
              icon: preferences.sortBy().get() == s
                  ? preferences.sortDirection().get()
                      ? Symbols.arrow_downward
                      : Symbols.arrow_upward
                  : null,
              onSettingClick: () {
                if (preferences.sortBy().get() == s) {
                  preferences
                      .sortDirection()
                      .set(!preferences.sortDirection().get());
                } else {
                  preferences.sortBy().set(s);
                }
              },
              forceIcon: true,
              dense: true,
            ),
          )
          .toList(),
    );
  }
}
