import 'package:athena/common_widgets/empty.dart';
import 'package:athena/features/settings/screens/appearance/providers/appearance_provider.dart';
import 'package:athena/features/settings/models/preference.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class LibraryTab extends ConsumerWidget {
  const LibraryTab({super.key});

  static const String routeName = 'library';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Empty(
        message: 'Library Not Yet Implemented',
        actions: [
          EmptyAction(
            text: 'Cycle Mode',
            icon: Icon(Symbols.routine),
            onPressed: () =>
                ref.read(appearancePreferencesProvider).themeMode().cycle(
                      ThemeMode.values,
                    ),
          ),
          EmptyAction(
            text: 'Toggle Pure Black',
            icon: Icon(Symbols.palette),
            onPressed: () =>
                ref.read(appearancePreferencesProvider).pureBlack().toggle(),
          ),
        ],
      ),
    );
  }
}
