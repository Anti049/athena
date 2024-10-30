import 'dart:math';

import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';

const List<String> _loadingMessages = [
  'Downloading more RAM',
  'Now in Technicolor',
  'Bleep Bloop.',
  'Locating the required gigapixels to render...',
  'Spinning up the hamster wheel...',
  "At least you're not on hold",
  'Hum something loud while others stare',
  'Loading humorous message... Please Wait',
  "I could've been faster in Python",
  'Congratulations! You are the 1000th visitor.',
  "HELP! I'm being held hostage and forced to write these stupid lines!",
  'RE-calibrating the internet...',
  "I'll be here all week",
  "Don't forget to tip your waitress",
  'Apply directly to the forehead',
  'Loading Battlestation',
];

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({
    super.key,
    this.message,
  });

  final String? message;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late final int _messageIndex;

  @override
  void initState() {
    _messageIndex = Random().nextInt(_loadingMessages.length);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircularProgressIndicator.adaptive(),
            const SizedBox(height: 32.0),
            Text(
              widget.message ?? _loadingMessages[_messageIndex],
              style: context.text.bodyLarge?.copyWith(
                color: context.scheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
