import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:athena/utils/brightness.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:responsive_framework/responsive_framework.dart';

part 'temp.freezed.dart';

@freezed
class HeaderBar with _$HeaderBar {
  const factory HeaderBar({
    required String label,
    required Color color,
    required Color textColor,
  }) = _HeaderBar;
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
    this.height,
    required this.color,
    required this.onColor,
    required this.label,
    required this.statusBar,
    required this.top,
  });

  final double? height;
  final Color color;
  final Color onColor;
  final String label;
  final bool statusBar;
  final double top;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      height: height,
      top: top,
      left: 0.0,
      right: 0.0,
      child: Container(
        color: color,
        child: Align(
          alignment: statusBar ? Alignment.bottomCenter : Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(bottom: statusBar ? 4.0 : 0.0),
            child: Text(
              label,
              style: context.textTheme.bodyMedium?.copyWith(
                color: onColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderLayout extends ConsumerWidget {
  const HeaderLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  double getHeaderHeight(BuildContext context, bool downloadedOnly,
      bool incognitoMode, double headerHeight) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final mainHeaderHeight = headerHeight + statusBarHeight;
    final subHeaderHeight = headerHeight;

    if (downloadedOnly && incognitoMode) {
      return mainHeaderHeight + subHeaderHeight;
    }
    if (downloadedOnly || incognitoMode) {
      return mainHeaderHeight;
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get preferences
    final preferences = ref.watch(preferencesProvider);

    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final themeMode = preferences.themeMode;
    final downloadedOnly = preferences.downloadedOnly;
    final incognitoMode = preferences.incognitoMode;

    final appBrightness = calculateBrightness(context, themeMode);
    final statusBarBrightness =
        appBrightness == Brightness.dark ? Brightness.light : Brightness.dark;
    final headerBrightness = statusBarBrightness == Brightness.dark
        ? Brightness.light
        : Brightness.dark;
    final showingHeader = downloadedOnly || incognitoMode;

    final headerHeight = ResponsiveValue(
      context,
      conditionalValues: [
        const Condition.equals(name: COMPACT, value: 24.0),
      ],
      defaultValue: 30.0,
    ).value;
    final headerTextStyle = ResponsiveValue(
      context,
      conditionalValues: [
        Condition.equals(name: COMPACT, value: context.textTheme.bodySmall),
      ],
      defaultValue: context.textTheme.bodyMedium,
    ).value;

    final mainHeader = downloadedOnly
        ? HeaderBar(
            label: context.locale.preferenceDownloadedOnly.title,
            color: context.scheme.tertiary,
            textColor: context.scheme.onTertiary,
          )
        : incognitoMode
            ? HeaderBar(
                label: context.locale.preferenceIncognitoMode.title,
                color: context.scheme.secondary,
                textColor: context.scheme.onSecondary,
              )
            : null;
    final subHeader = downloadedOnly && incognitoMode
        ? HeaderBar(
            label: context.locale.preferenceIncognitoMode.title,
            color: context.scheme.secondary,
            textColor: context.scheme.onSecondary,
          )
        : null;

    final headerContainerHeight = headerHeight + statusBarHeight;
    final primaryTop = showingHeader ? 0.0 : -headerContainerHeight;
    final secondaryTop = showingHeader ? -headerContainerHeight : -headerHeight;
    final downloadTop = downloadedOnly ? 0.0 : -headerContainerHeight;
    final incognitoTop = incognitoMode ? 0.0 : -headerContainerHeight;

    final downloadedHeader = HeaderBar(
      label: context.locale.preferenceDownloadedOnly.title,
      color: context.scheme.tertiary,
      textColor: context.scheme.onTertiary,
    );
    final incognitoHeader = HeaderBar(
      label: context.locale.preferenceIncognitoMode.title,
      color: context.scheme.secondary,
      textColor: context.scheme.onSecondary,
    );

    final primaryHeader = downloadedOnly
        ? downloadedHeader
        : incognitoMode
            ? incognitoHeader
            : null;
    final secondaryHeader =
        downloadedOnly && incognitoMode ? incognitoHeader : null;

    // Set the system overlay style
    Color trueTransparent = Colors.transparent.withOpacity(0.002);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: trueTransparent,
        statusBarIconBrightness:
            showingHeader ? headerBrightness : statusBarBrightness,
        systemNavigationBarColor:
            trueTransparent, // Manually set opacity just above 0 to get true transparency
        systemNavigationBarIconBrightness: statusBarBrightness,
      ),
    );
    final topHeight = getHeaderHeight(
      context,
      downloadedOnly,
      incognitoMode,
      headerHeight,
    );

    // Show top section for header bar, then child below (usually a scaffold)
    return Column(
      children: [
        PreferredSize(
          preferredSize: Size(double.infinity, statusBarHeight),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: SizedBox(
              width: double.infinity,
              height: topHeight,
              child: Stack(
                alignment: Alignment.topCenter,
                fit: StackFit.expand,
                children: [
                  // Incognito Mode
                  HeaderContainer(
                    height: statusBarHeight + headerHeight,
                    color: incognitoHeader.color,
                    onColor: incognitoHeader.textColor,
                    label: incognitoHeader.label,
                    statusBar: statusBarHeight > 0,
                    top: incognitoTop,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
