import 'package:athena/common/presentation/empty.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  static const String routeName = 'history';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Empty(
        message: 'History Not Yet Implemented',
      ),
    );
  }
}
