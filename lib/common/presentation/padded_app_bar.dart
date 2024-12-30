import 'package:athena/features/banners/providers/banners_provider.dart';
import 'package:athena/features/settings/screens/appearance/providers/appearance_provider.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class PaddedAppBar extends ConsumerWidget implements PreferredSizeWidget {
  PaddedAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.bottom,
    this.primary = true,
  });

  final Widget? title;
  final List<Widget>? actions;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final bool primary;
  final MenuController _menuController = MenuController();

  bool get needsPadding {
    if (actions == null) return false;
    if (actions!.isEmpty) return false;
    if (actions![actions!.length - 1] is SizedBox) return false;
    return true;
  }

  List<Widget> get _actions {
    if (actions == null) return [];
    if (actions!.length <= 2) return actions ?? [];
    return [
      ...actions!.sublist(0, 2),
      MenuAnchor(
        controller: _menuController,
        menuChildren: actions!.sublist(2).map(
          (e) {
            if (e is! IconButton) return e;
            return MenuItemButton(
              onPressed: e.onPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(e.tooltip ?? 'TOOLTIP'),
              ),
            );
          },
        ).toList(),
        child: IconButton(
          icon: const Icon(Symbols.more_vert),
          onPressed: () {
            _menuController.toggle();
          },
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(appearancePreferencesProvider);
    final bannersActive = ref.watch(bannersActiveProvider);
    return AppBar(
      primary: !bannersActive,
      title: title,
      actions: [
        ..._actions,
        if (needsPadding) const SizedBox(width: 8.0),
      ],
      leading: leading,
      bottom: bottom,
      systemOverlayStyle: calculateOverlayStyle(
        context,
        calculateBrightness(
          context,
          preferences.themeMode().get(),
        ),
        bannersActive,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}

extension on MenuController {
  void toggle() {
    if (isOpen) {
      close();
    } else {
      open();
    }
  }
}
