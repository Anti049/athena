import 'package:flutter/material.dart';

class PaddedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PaddedAppBar({
    super.key,
    this.title,
    this.actions,
  });

  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: title, actions: [
      ...actions ?? [],
      if (actions != null && actions![actions!.length - 1] is! SizedBox)
        const SizedBox(width: 8.0),
    ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
