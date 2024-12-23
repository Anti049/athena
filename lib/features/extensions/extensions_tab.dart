import 'package:athena/features/extensions/presentation/components/extension_item.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class ExtensionsTab extends StatelessWidget {
  const ExtensionsTab({super.key});

  static const String routeName = 'extensions';

  List<Widget> _getInstalled(BuildContext context) {
    final List<Widget> installed = [
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 4.0),
        child: Text(
          'Installed',
          style: context.text.labelLarge,
        ),
      ),
    ];

    // TODO: Lookup installed extensions
    installed.add(
      ExtensionItem(
        title: 'Archive of Our Own',
        version: 'v1.0.0',
        imageURL:
            'https://static.wikia.nocookie.net/fanvid/images/8/8f/AO3_Logo.png/revision/latest?cb=20200519074845',
        actions: [
          IconButton(
            icon: Icon(Symbols.settings),
            onPressed: () {},
          ),
        ],
      ),
    );

    return installed;
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

    // TODO: Lookup available extensions
    available.add(
      ExtensionItem(
        title: 'Fanfiction.net',
        version: 'v1.0.0',
        isAdult: true,
        actions: [
          IconButton(
            icon: Icon(Symbols.public),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Symbols.download),
            onPressed: () {},
          ),
        ],
      ),
    );

    return available;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ..._getInstalled(context),
          ..._getAvailable(context),
        ],
      ),
    );
  }
}
