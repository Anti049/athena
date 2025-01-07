import 'package:flutter/material.dart';

class AnimatedTabController extends StatefulWidget {
  const AnimatedTabController({
    super.key,
    required this.tabController,
    required this.children,
  });

  final TabController tabController;
  final List<Widget> children;

  @override
  State<AnimatedTabController> createState() => _AnimatedTabControllerState();
}

class _AnimatedTabControllerState extends State<AnimatedTabController> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(_tabUpdated);
    widget.tabController.animation?.addListener(_tabUpdated);
  }

  @override
  void dispose() {
    super.dispose();
    widget.tabController.removeListener(_tabUpdated);
    widget.tabController.animation?.removeListener(_tabUpdated);
  }

  @override
  void didUpdateWidget(covariant AnimatedTabController oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.tabController != widget.tabController) {
      oldWidget.tabController.removeListener(_tabUpdated);
      widget.tabController.addListener(_tabUpdated);
      oldWidget.tabController.animation?.removeListener(_tabUpdated);
      widget.tabController.animation?.addListener(_tabUpdated);
      setState(() {});
    }
  }

  void _tabUpdated() => setState(() {});

  @override
  Widget build(BuildContext context) =>
      widget.children[widget.tabController.animation?.value.round() ??
          widget.tabController.index];
}
