import 'dart:math';

import 'package:athena/common_widgets/action_button.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';

const List<String> _errorFaces = [
  "(･o･;)",
  "Σ(ಠ_ಠ)",
  "ಥ_ಥ",
  "(˘･_･˘)",
  "(；￣Д￣)",
  "(･Д･。",
  "(╯︵╰,)",
  "૮(˶ㅠ︿ㅠ)ა",
  "(っ◞‸◟ c)",
  "｡°(°.◜ᯅ◝°)°｡",
  "(≥o≤)"
];

class EmptyAction {
  const EmptyAction({
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  final String text;
  final Icon icon;
  final VoidCallback onPressed;
}

class Empty extends StatefulWidget {
  const Empty({
    super.key,
    required this.message,
    this.actions,
  });

  final String message;
  final List<EmptyAction>? actions;

  @override
  State<Empty> createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  late final int _errorIndex;

  @override
  void initState() {
    _errorIndex = Random().nextInt(_errorFaces.length);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _errorFaces[_errorIndex],
              style: context.text.displayMedium?.copyWith(
                color: context.scheme.secondary,
              ),
            ),
            Baseline(
              baseline: 24.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                widget.message,
                style: context.text.titleLarge?.copyWith(
                  color: context.scheme.secondary,
                ),
              ),
            ),
            if (widget.actions?.isNotEmpty ?? false)
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (final action in widget.actions!)
                      ActionButton(
                        text: action.text,
                        icon: action.icon,
                        onPressed: action.onPressed,
                      )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
