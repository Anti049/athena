import 'package:athena/features/filter_sort/screens/tags/presentation/components/tag_section.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class TagsTab extends ConsumerStatefulWidget {
  const TagsTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TagsTabState();
}

class _TagsTabState extends ConsumerState<TagsTab> {
  @override
  Widget build(BuildContext context) {
    final includeFandoms = [
      'Fandom 1',
      'Fandom 2',
      'Fandom 3',
      'Fandom 4',
    ];
    final excludeFandoms = [
      'Fandom 5',
      'Fandom 6',
    ];
    final tagPresets = [
      'None',
      'Preset 1',
      'Preset 2',
      'Preset 3',
    ];

    return Column(
      children: [
        ListTile(
          title: Text(
            'Presets',
            style: context.text.titleMedium,
          ),
          onTap: () {},
          contentPadding: const EdgeInsets.all(16.0),
          trailing: DropdownMenu<String>(
            initialSelection: tagPresets.first,
            dropdownMenuEntries: tagPresets
                .map(
                  (e) => DropdownMenuEntry<String>(
                    value: e,
                    label: e,
                  ),
                )
                .toList(),
            onSelected: (value) {
              // TODO: Implement tag preset selection
            },
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              // Rounded colored border
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: context.scheme.primary,
                ),
              ),
            ),
          ),
          tileColor: context.scheme.surfaceContainerLowest,
        ),
        const Divider(
          height: 0.0,
        ),
        Expanded(
          child: ListView(
            // padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            children: [
              TagSection(
                title: 'Fandoms',
                icon: Symbols.book,
                includeTags: includeFandoms,
                excludeTags: excludeFandoms,
                selectionRoute: null,
              ),
              TagSection(
                title: 'Characters',
                icon: Symbols.person,
                includeTags: includeFandoms,
                excludeTags: excludeFandoms,
                selectionRoute: null,
              ),
              TagSection(
                title: 'Relationships',
                icon: Symbols.favorite,
                includeTags: includeFandoms,
                excludeTags: excludeFandoms,
                selectionRoute: null,
              ),
              TagSection(
                title: 'Genres',
                icon: Symbols.note_stack,
                includeTags: includeFandoms,
                excludeTags: excludeFandoms,
                selectionRoute: null,
              ),
              TagSection(
                title: 'Ratings',
                icon: Symbols.star,
                includeTags: includeFandoms,
                excludeTags: excludeFandoms,
                selectionRoute: null,
              ),
              TagSection(
                title: 'Warnings',
                icon: Symbols.warning,
                includeTags: includeFandoms,
                excludeTags: excludeFandoms,
                selectionRoute: null,
              ),
              TagSection(
                title: 'Categories',
                icon: Symbols.label,
                includeTags: includeFandoms,
                excludeTags: excludeFandoms,
                selectionRoute: null,
              ),
              TagSection(
                title: 'Additional Tags',
                icon: Symbols.sell,
                includeTags: includeFandoms,
                excludeTags: excludeFandoms,
                selectionRoute: null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
