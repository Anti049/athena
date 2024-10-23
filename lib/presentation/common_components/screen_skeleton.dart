import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenSkeleton extends ConsumerWidget {
  const ScreenSkeleton({super.key, required this.screen});

  final Widget screen;

  Color calculateHeaderColor(
      BuildContext context, bool downloadedOnly, bool incognitoMode) {
    if (downloadedOnly) {
      return context.scheme.tertiary;
    }
    if (incognitoMode) {
      return context.scheme.secondary;
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(preferencesProvider);
    final downloadedOnly = preferences.downloadedOnly;
    final incognitoMode = preferences.incognitoMode;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Placeholder(
          fallbackHeight: 64.0,
          color: calculateHeaderColor(context, downloadedOnly, incognitoMode),
        ),
        Container(
          width: double.infinity,
          height: 64.0,
          color: calculateHeaderColor(context, downloadedOnly, incognitoMode),
        ),
        screen,
      ],
    );
  }
}
