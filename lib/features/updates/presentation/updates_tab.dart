import 'package:athena/common/presentation/empty.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UpdatesTab extends StatelessWidget {
  const UpdatesTab({super.key});

  static const String routeName = 'updates';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Empty(
        message: 'Updates Not Yet Implemented',
      ),
    );
  }
}
