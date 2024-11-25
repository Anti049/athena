import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final indicator = GlobalKey<RefreshIndicatorState>();

// Intents
class RefreshIntent extends Intent {
  const RefreshIntent();
}

class EscapeIntent extends Intent {
  const EscapeIntent();
}

class ActionFrame extends StatelessWidget {
  const ActionFrame({
    super.key,
    required this.child,
    this.onEscape,
    this.onRefresh,
  });

  final Widget child;
  final void Function()? onEscape;
  final void Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Actions(
      actions: {
        RefreshIntent: CallbackAction<RefreshIntent>(onInvoke: (_) {
          indicator.currentState?.show();
          onRefresh?.call();
          return null;
        }),
        EscapeIntent: CallbackAction<EscapeIntent>(onInvoke: (_) {
          onEscape?.call();
          return null;
        }),
      },
      child: Shortcuts(
        shortcuts: const {
          SingleActivator(LogicalKeyboardKey.f5): RefreshIntent(),
          SingleActivator(LogicalKeyboardKey.escape): EscapeIntent(),
        },
        child: RefreshIndicator(
          key: indicator,
          onRefresh: () async {
            onRefresh?.call();
          },
          child: child,
        ),
      ),
    );
  }
}
