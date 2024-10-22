import 'package:animated_visibility/animated_visibility.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SelectionBar extends StatelessWidget {
  const SelectionBar({
    super.key,
    required this.visible,
    this.onCategorizeSelected,
    this.onMarkAsRead,
    this.onMarkAsUnread,
    this.onDownloadAll,
    this.onDelete,
  });

  final bool visible;
  final void Function()? onCategorizeSelected;
  final void Function()? onMarkAsRead;
  final void Function()? onMarkAsUnread;
  final void Function()? onDownloadAll;
  final void Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    return AnimatedVisibility(
      visible: visible,
      // Slide up from bottom
      enter: slideInVertically(
        curve: Curves.easeInOut,
      ),
      enterDuration: const Duration(milliseconds: 200),
      exit: slideOutVertically(
        curve: Curves.easeInOut,
      ),
      exitDuration: const Duration(milliseconds: 200),
      child: BottomAppBar(
        color: context.scheme.surfaceContainerLow,
        height: 56.0,
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Symbols.label),
              tooltip: context.locale.librarySelectionMenu.categorizeSelected,
              onPressed: onCategorizeSelected,
            ),
            IconButton(
              icon: const Icon(Symbols.done_all),
              tooltip: context.locale.librarySelectionMenu.markAsRead,
              onPressed: onMarkAsRead,
            ),
            IconButton(
              icon: const Icon(Symbols.remove_done),
              tooltip: context.locale.librarySelectionMenu.markAsUnread,
              onPressed: onMarkAsUnread,
            ),
            IconButton(
              icon: const Icon(Symbols.download),
              tooltip: context.locale.librarySelectionMenu.downloadAll,
              onPressed: onDownloadAll,
            ),
            IconButton(
              icon: const Icon(Symbols.delete),
              tooltip: context.locale.librarySelectionMenu.delete,
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
