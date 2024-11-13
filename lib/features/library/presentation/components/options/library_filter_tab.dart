import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/settings/presentation/components/checkbox_preference_widget.dart';
import 'package:athena/localization/translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryFilterTab extends ConsumerWidget {
  const LibraryFilterTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        CheckboxPreferenceWidget(
          title: context.locale.library.options.filter.downloaded,
          preference: preferences.filterDownloaded(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.library.options.filter.unread,
          preference: preferences.filterUnread(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.library.options.filter.started,
          preference: preferences.filterStarted(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.library.options.filter.completed,
          preference: preferences.filterCompleted(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.library.options.filter.bookmarked,
          preference: preferences.filterBookmarked(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.library.options.filter.updated,
          preference: preferences.filterUpdated(),
          widgetLeading: true,
        ),
      ],
    );
  }
}
