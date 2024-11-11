import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryDisplayTab extends ConsumerWidget {
  const LibraryDisplayTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: const [],
    );
  }
}
