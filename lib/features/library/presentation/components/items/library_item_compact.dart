import 'package:athena/features/home/presentation/home_navigation.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/library/models/library_item.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryItemCompact extends ConsumerWidget {
  const LibraryItemCompact({
    super.key,
    required this.libraryItem,
    this.selected = false,
    this.onTap,
    this.onSecondaryTap,
    this.onDoubleTap,
    this.onHold,
  });

  final LibraryItem libraryItem;
  final bool selected;
  final void Function()? onTap;
  final void Function()? onSecondaryTap;
  final void Function()? onDoubleTap;
  final void Function()? onHold;

  DecorationImage? getCoverImage() {
    if (libraryItem.libraryWork.work.coverURL != '') {
      return DecorationImage(
        image: NetworkImage(libraryItem.libraryWork.work.coverURL),
        fit: BoxFit.cover,
      );
    } else {
      try {
        return const DecorationImage(
          image: AssetImage('assets/images/placeholder.png'),
          fit: BoxFit.cover,
        );
      } catch (e) {
        return null;
      }
    }
  }

  Widget getCover(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: getCoverImage(),
              color: context.scheme.surfaceContainer,
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: context.scheme.surfaceContainer,
                width: selected ? 1.0 : 0.0,
              ),
            ),
          ),
          if (selected)
            Container(
              decoration: BoxDecoration(
                color: context.scheme.primary.withOpacity(0.15),
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
        ],
      ),
    );
  }

  double calculateLineHeight(
    TextStyle? style, {
    int numLines = 2,
  }) {
    final fontSize = style?.fontSize ?? 0.0;
    final lineHeight = style?.height ?? 0.0;

    return (fontSize * lineHeight) * numLines;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final libraryPreferences = ref.read(libraryPreferencesProvider);

    final displayMode = libraryPreferences.displayMode().get();
    final labelStyle =
        context.isCompact ? context.text.bodySmall : context.text.bodyMedium;

    return GestureDetector(
      onTap: onTap,
      onSecondaryTap: onSecondaryTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onHold,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: selected ? context.scheme.primary : Colors.transparent,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getCover(context),
            if (displayMode == DisplayMode.comfortableGrid)
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: calculateLineHeight(labelStyle),
                      child: Text(
                        libraryItem.libraryWork.work.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: labelStyle?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: selected ? context.scheme.onPrimary : null,
                        ),
                      ),
                    ),
                    // Text(
                    //   libraryItem.libraryWork.work.author,
                    //   maxLines: 1,
                    //   overflow: TextOverflow.ellipsis,
                    // ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
