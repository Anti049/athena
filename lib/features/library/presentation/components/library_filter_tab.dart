import 'package:athena/features/library/application/library_preferences.dart';
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
          title: context.locale.libraryOptionsFilter.downloaded,
          preference: preferences.filterDownloaded(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.unread,
          preference: preferences.filterUnread(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.started,
          preference: preferences.filterStarted(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.completed,
          preference: preferences.filterCompleted(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.bookmarked,
          preference: preferences.filterBookmarked(),
          widgetLeading: true,
        ),
        CheckboxPreferenceWidget(
          title: context.locale.libraryOptionsFilter.updated,
          preference: preferences.filterUpdated(),
          widgetLeading: true,
        ),
      ],
    );
  }
}
