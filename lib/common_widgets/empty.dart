import 'dart:math';

import 'package:athena/common_widgets/action_button.dart';
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
  "｡°(°.◜ᯅ◝°)°｡"
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

class Empty extends StatelessWidget {
  const Empty({
    super.key,
    required this.message,
    this.actions,
  });

  final String message;
  final List<EmptyAction>? actions;

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
              _errorFaces[Random().nextInt(_errorFaces.length)],
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            Baseline(
              baseline: 24.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                message,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ),
            if (actions?.isNotEmpty ?? false)
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (final action in actions!)
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
