import 'package:flutter/material.dart';

class SizeReporterNotification extends Notification {
  const SizeReporterNotification(this.size);

  /// Notification data.
  final Size size;
}

class ReportSizeWidget extends StatefulWidget {
  const ReportSizeWidget({
    super.key,
    required this.child,
    required this.onSizeChanged,
  });

  final Widget child;
  final void Function(Size size) onSizeChanged;

  @override
  State<ReportSizeWidget> createState() => _ReportSizeWidgetState();
}

class _ReportSizeWidgetState extends State<ReportSizeWidget> {
  Size _currentSize = Size.zero;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final newSize = Size(constraints.maxWidth, constraints.maxHeight);
          if (_currentSize != newSize) {
            _currentSize = newSize;
            widget.onSizeChanged(newSize);
          }
        });
        return Expanded(
          child: widget.child,
        );
      },
    );
  }
}
