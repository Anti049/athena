import 'package:athena/features/library/application/library_preferences.dart';
import 'package:athena/features/settings/presentation/components/text_preference_widget.dart';
import 'package:athena/localization/translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            (s) => TextPreferenceWidget(
              title: context.locale.libraryOptionsSort[s.name].toString(),
              icon: preferences.sortBy().get() == s
                  ? preferences.sortDirection().get()
                      ? Icons.arrow_downward
                      : Icons.arrow_upward
                  : null,
              onPreferenceClick: () {
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
