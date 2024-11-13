import 'package:athena/features/banners/providers/banner_provider.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class ResponsiveAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const ResponsiveAppBar({
    super.key,
    required this.actions,
    required this.searchActive,
    required this.onToggleSearch,
    required this.onCancelSearch,
    required this.onSearch,
    required this.selectionActive,
    required this.selectedCount,
    required this.onCancelSelection,
    required this.onSelectAll,
    required this.onInvertSelection,
  });

  final List<Widget> actions;
  final bool searchActive;
  final void Function() onToggleSearch;
  final void Function() onCancelSearch;
  final void Function(String) onSearch;
  final bool selectionActive;
  final int selectedCount;
  final void Function() onCancelSelection;
  final void Function() onSelectAll;
  final void Function() onInvertSelection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bannerData = ref.watch(bannerProvider);

    return AppBar(
      primary: !bannerData.active,
      automaticallyImplyLeading: !kIsWeb,
      leading: searchActive
          ? IconButton(
              icon: const Icon(Symbols.arrow_back),
              onPressed: onCancelSearch,
            )
          : selectionActive
              ? IconButton(
                  icon: const Icon(Symbols.close),
                  onPressed: onCancelSelection,
                )
              : null,
      title: searchActive
          ? TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: context.locale.library.searchHint,
                border: InputBorder.none,
                hintStyle: context.text.bodyLarge?.copyWith(
                  color: context.scheme.onSurfaceVariant,
                ),
              ),
              style: context.text.bodyLarge?.copyWith(
                color: context.scheme.onSurface,
              ),
              onChanged: onSearch,
            )
          : selectionActive
              ? Text(
                  selectedCount.toString(),
                )
              : Text(context.locale.page.library.title),
      actions: [
        if (!searchActive && !selectionActive)
          IconButton(
            icon: const Icon(Symbols.search),
            onPressed: onToggleSearch,
          ),
        if (!selectionActive) ...actions,
        if (selectionActive) ...[
          IconButton(
            icon: const Icon(Symbols.select_all),
            onPressed: onSelectAll,
          ),
          IconButton(
            icon: const Icon(Symbols.flip_to_back),
            onPressed: onInvertSelection,
          ),
        ],
        const SizedBox(
          width: 8.0,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
