import 'package:athena/features/library/data/enums.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/settings/presentation/chip_setting.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/string.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryDisplayTab extends ConsumerWidget {
  const LibraryDisplayTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            16.0,
            16.0,
            8.0,
            8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.locale.library.options.display.mode.title,
                style: context.text.bodyMedium,
              ),
              const SizedBox(height: 8.0),
              Wrap(
                spacing: 8.0,
                children: DisplayMode.values
                    .map(
                      (mode) => ChipSettingWidget(
                        preference: preferences.displayMode(),
                        label: context
                            .locale.library.options.display.mode[mode.name]
                            .toString(),
                        value: mode,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        if (preferences.displayMode().get().name.containsIgnoreCase('grid'))
          Padding(
            padding: const EdgeInsets.fromLTRB(
              16.0,
              8.0,
              8.0,
              8.0,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.locale.library.options.display.gridSize.title,
                      style: context.text.bodyMedium,
                    ),
                    Text(
                      context.locale.library.options.display.gridSize.subtitle(
                        preferences.gridSize().get().toInt(),
                      ),
                      style: context.text.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Slider(
                    value: preferences.gridSize().get(),
                    onChanged: (newValue) {
                      preferences.gridSize().set(newValue);
                    },
                    min: 0.0,
                    max: 6.0,
                    divisions: 6,
                  ),
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            16.0,
            8.0,
            8.0,
            0.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.locale.library.options.display.overlay.title,
                style: context.text.bodyMedium,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Wrap(
                  spacing: 8.0,
                  children: [
                    ChipSettingWidget(
                      preference: preferences.downloadedBadge(),
                      label: context.locale.library.options.display.overlay
                          .downloadedChapters,
                    ),
                    ChipSettingWidget(
                      preference: preferences.unreadBadge(),
                      label: context.locale.library.options.display.overlay
                          .unreadChapters,
                    ),
                    ChipSettingWidget(
                      preference: preferences.localBadge(),
                      label: context
                          .locale.library.options.display.overlay.localSource,
                    ),
                    ChipSettingWidget(
                      preference: preferences.languageBadge(),
                      label: context
                          .locale.library.options.display.overlay.language,
                    ),
                    ChipSettingWidget(
                      preference: preferences.sourceBadge(),
                      label:
                          context.locale.library.options.display.overlay.source,
                    ),
                    ChipSettingWidget(
                      preference: preferences.continueReadingButton(),
                      label: context.locale.library.options.display.overlay
                          .continueReading,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            16.0,
            8.0,
            8.0,
            0.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.locale.library.options.display.tabs.title,
                style: context.text.bodyMedium,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Wrap(
                  spacing: 8.0,
                  children: [
                    ChipSettingWidget(
                      preference: preferences.showCategoryTabs(),
                      label:
                          context.locale.library.options.display.tabs.category,
                      enabled: true,
                    ),
                    ChipSettingWidget(
                      preference: preferences.showWorkCount(),
                      label: context.locale.library.options.display.tabs.number,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
