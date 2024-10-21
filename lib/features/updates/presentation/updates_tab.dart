import 'package:athena/common_widgets/empty.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class UpdatesTab extends ConsumerWidget {
  const UpdatesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Empty(
        message: 'Updates Not Yet Implemented',
      ),
    );
  }
}
