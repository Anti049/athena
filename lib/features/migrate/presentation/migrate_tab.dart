import 'package:athena/common/presentation/empty.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MigrateTab extends StatelessWidget {
  const MigrateTab({super.key});

  static const String routeName = 'migrate';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Empty(
        message: 'Migrate Not Yet Implemented',
      ),
    );
  }
}
