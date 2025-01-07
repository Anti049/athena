import 'package:athena/features/extensions/presentation/components/extension_item.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class SourcesTab extends StatefulWidget {
  const SourcesTab({super.key});

  static const String routeName = 'sources';

  static List<Widget> actions = _SourcesTabState.actions;

  @override
  State<SourcesTab> createState() => _SourcesTabState();
}

class _SourcesTabState extends State<SourcesTab> {
  static final actions = [
    IconButton(
      icon: Icon(Symbols.travel_explore),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Symbols.filter_list),
      onPressed: () {},
    ),
  ];

  final extensions = const [
    ExtensionItem(
      title: 'Archive of Our Own',
      version: 'v1.0.0',
      imageURL:
          'https://static.wikia.nocookie.net/fanvid/images/8/8f/AO3_Logo.png/revision/latest?cb=20200519074845',
    ),
    ExtensionItem(
      title: 'Fanfiction.net',
      version: 'v1.0.0',
      isAdult: true,
    ),
  ];
  final pinned = <Widget>[];

  void addPinned(ExtensionItem item) {
    setState(() {
      if (!pinned.contains(item)) pinned.add(item);
    });
  }

  void removePinned(ExtensionItem item) {
    setState(() {
      if (pinned.contains(item)) pinned.remove(item);
    });
  }

  List<Widget> _getPinned(BuildContext context) {
    final List<Widget> pinned = [
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 4.0),
        child: Text(
          'Pinned',
          style: context.text.labelLarge,
        ),
      ),
    ];

    // TODO: Lookup pinned extensions
    pinned.addAll(
      this.pinned.map(
        (e) {
          final extension = e as ExtensionItem;
          return extension.copyWith(
            actions: [
              IconButton(
                icon: Icon(
                  Symbols.keep,
                  fill: 1.0,
                  color: context.scheme.primary,
                ),
                onPressed: () => removePinned(extension),
              ),
            ],
          );
        },
      ),
    );

    return pinned;
  }

  List<Widget> _getAvailable(BuildContext context) {
    final List<Widget> available = [
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 4.0, 0.0, 0.0),
        child: Text(
          'Available',
          style: context.text.labelLarge,
        ),
      ),
    ];

    available.addAll(
      extensions.map(
        (e) {
          if (pinned.contains(e)) return const SizedBox();
          return e.copyWith(
            actions: [
              IconButton(
                icon: Icon(Symbols.keep),
                onPressed: () => addPinned(e),
              ),
            ],
          );
        },
      ),
    );

    return available;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ..._getPinned(context),
          ..._getAvailable(context),
        ],
      ),
    );
  }
}
