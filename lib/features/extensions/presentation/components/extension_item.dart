import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ExtensionItem extends StatelessWidget {
  const ExtensionItem({
    super.key,
    this.imageURL,
    this.icon = Symbols.extension,
    required this.title,
    required this.version,
    this.isAdult = false,
    this.actions,
    this.onTap,
  });

  final String? imageURL;
  final IconData icon;
  final String title;
  final String version;
  final bool isAdult;
  final List<Widget>? actions;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: imageURL != null
          ? Image.network(
              imageURL!,
              width: 30.0,
              height: 30.0,
            )
          : Icon(
              icon,
              size: 30.0,
            ),
      title: Text(title),
      subtitle: Row(
        children: [
          Text(version),
          if (isAdult) ...[
            const SizedBox(width: 8.0),
            Text(
              '18+',
              style: context.text.labelSmall?.copyWith(
                color: context.scheme.error,
              ),
            ),
          ],
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: actions ?? [],
      ),
      contentPadding: const EdgeInsets.only(
        left: 16.0,
        right: 8.0,
      ),
      onTap: () {},
    );
  }

  ExtensionItem copyWith({
    String? imageURL,
    IconData? icon,
    String? title,
    String? version,
    bool? isAdult,
    List<Widget>? actions,
    VoidCallback? onTap,
  }) {
    return ExtensionItem(
      imageURL: imageURL ?? this.imageURL,
      icon: icon ?? this.icon,
      title: title ?? this.title,
      version: version ?? this.version,
      isAdult: isAdult ?? this.isAdult,
      actions: actions ?? this.actions,
      onTap: onTap ?? this.onTap,
    );
  }
}
