import 'package:athena/l10n/l10n.dart';
import 'package:athena/presentation/common_components/header_scaffold.dart';
import 'package:athena/presentation/more/settings/appearance/settings_appearance.dart';
import 'package:athena/presentation/more/settings/components/preference_text.dart';
import 'package:athena/presentation/more/settings/models/settings_screen_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:page_transition/page_transition.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Settings items
    final items = [
      SettingsScreenItem(
        title: context.locale.preference_category_appearance.title,
        subtitle: context.locale.preference_category_appearance.summary,
        icon: Symbols.palette,
        screen: const SettingsAppearanceScreen(),
      ),
    ];

    // Return the scaffold
    return HeaderScaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(
            icon: const Icon(Symbols.search),
            onPressed: () {},
          ),
          const SizedBox(width: 8.0),
        ],
      ),
      body: ListView(
        children: items.map(
          (item) {
            return PreferenceText(
              key: Key('${item.hashCode}'),
              title: item.title,
              subtitle: item.subtitle,
              icon: item.icon,
              onPreferenceClick: () {
                Navigator.of(context).push(
                  PageTransition(
                    child: item.screen,
                    childCurrent: this,
                    type: PageTransitionType.rightToLeftWithFade,
                  ),
                );
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
