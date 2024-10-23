import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_layout.freezed.dart';

@freezed
class HeaderBar with _$HeaderBar {
  const factory HeaderBar({
    required String label,
    required Color color,
    required Color textColor,
  }) = _HeaderBar;
}

class HeaderLayout extends ConsumerWidget {
  const HeaderLayout({
    super.key,
    required this.child,
  });

  final Widget child;
  static const double headerHeight = 24.0;

  double getHeaderHeight(
      BuildContext context, bool downloadedOnly, bool incognitoMode) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final mainHeaderHeight = headerHeight + statusBarHeight;
    const subHeaderHeight = headerHeight;

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

    Color trueTransparent = Colors.transparent.withOpacity(0.002);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: showingHeader ? mainHeader?.color : trueTransparent,
        statusBarIconBrightness:
            showingHeader ? headerBrightness : statusBarBrightness,
        systemNavigationBarColor:
            trueTransparent, // Manually set opacity just above 0 to get true transparency
        systemNavigationBarIconBrightness: statusBarBrightness,
      ),
    );

    // Show top section for header bar, then child below (usually a scaffold)
    return Column(
      children: [
        PreferredSize(
          preferredSize: Size.fromHeight(
            getHeaderHeight(
              context,
              downloadedOnly,
              incognitoMode,
            ),
          ),
          child: Column(
            children: [
              if (mainHeader != null)
                SizedBox(
                  height: statusBarHeight + headerHeight,
                  // Align text at bottom of container
                  child: Container(
                    color: mainHeader.color,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          mainHeader.label,
                          style: context.text.bodySmall?.copyWith(
                            color: mainHeader.textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (subHeader != null)
                SizedBox(
                  height: headerHeight,
                  child: Container(
                    color: subHeader.color,
                    child: Center(
                      child: Text(
                        subHeader.label,
                        style: context.text.bodySmall?.copyWith(
                          color: subHeader.textColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
