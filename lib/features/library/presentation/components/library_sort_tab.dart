import 'package:athena/features/library/data/enums.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/settings/presentation/text_setting.dart';
import 'package:athena/utils/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class LibrarySortTab extends ConsumerWidget {
  const LibrarySortTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
