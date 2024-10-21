import 'package:athena/common_widgets/empty.dart';
import 'package:athena/localization/translations.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Empty(
        message: message,
        actions: [
          EmptyAction(
            text: context.locale.errorTryAgain,
            icon: const Icon(Icons.refresh),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
