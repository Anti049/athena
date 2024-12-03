import 'package:athena/common_widgets/empty.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExtensionsTab extends StatelessWidget {
  const ExtensionsTab({super.key});

  static const String routeName = 'extensions';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Empty(
        message: 'Extensions Not Yet Implemented',
      ),
    );
  }
}
