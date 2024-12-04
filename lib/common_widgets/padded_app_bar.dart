import 'package:athena/features/settings/screens/appearance/providers/appearance_provider.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaddedAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const PaddedAppBar({
    super.key,
    this.title,
    this.actions,
    this.bottom,
  });

  final Widget? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  bool get needsPadding {
    if (actions == null) return false;
    if (actions!.isEmpty) return false;
    if (actions![actions!.length - 1] is SizedBox) return false;
    return true;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(appearancePreferencesProvider);
    return AppBar(
      title: title,
      actions: [
        ...actions ?? [],
        if (needsPadding) const SizedBox(width: 8.0),
      ],
      bottom: bottom,
      systemOverlayStyle: calculateOverlayStyle(
        context,
        calculateBrightness(
          context,
          preferences.themeMode().get(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}
