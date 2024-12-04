import 'package:athena/common_widgets/empty.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SourcesTab extends StatelessWidget {
  const SourcesTab({super.key});

  static const String routeName = 'sources';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Empty(
        message: 'Sources Not Yet Implemented',
      ),
    );
  }
}
