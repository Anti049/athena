// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

// Device layout breakpoints
const String COMPACT = 'COMPACT';
const String MEDIUM = 'MEDIUM';
const String EXPANDED = 'EXPANDED';
const String LARGE = 'LARGE';
const String EXTRA_LARGE = 'EXTRA_LARGE';

// Responsive layout extension
extension ResponsiveLayout on BuildContext {
  ResponsiveBreakpointsData get responsive => ResponsiveBreakpoints.of(this);

  bool get isCompact => responsive.breakpoint.name == COMPACT;
  bool get isMedium => responsive.breakpoint.name == MEDIUM;
  bool get isExpanded => responsive.breakpoint.name == EXPANDED;
  bool get isLarge => responsive.breakpoint.name == LARGE;
  bool get isExtraLarge => responsive.breakpoint.name == EXTRA_LARGE;

  bool get atLeastCompact => responsive.largerOrEqualTo(COMPACT);
  bool get atLeastMedium => responsive.largerOrEqualTo(MEDIUM);
  bool get atLeastExpanded => responsive.largerOrEqualTo(EXPANDED);
  bool get atLeastLarge => responsive.largerOrEqualTo(LARGE);
  bool get atLeastExtraLarge => responsive.largerOrEqualTo(EXTRA_LARGE);
}
