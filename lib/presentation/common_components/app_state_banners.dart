import 'package:animated_visibility/animated_visibility.dart';
import 'package:athena/core/banner/banner_provider.dart';
import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/application/base_preferences.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:athena/utils/brightness.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: constant_identifier_names
const BANNER_HEIGHT = 24.0;
double _topInset = 0.0;
bool _warning = false;
String _warningMessage = '';
bool _indexing = false;
bool _downloadedOnly = false;
bool _incognitoMode = false;

class AppStateBanners extends ConsumerWidget {
  const AppStateBanners({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get preferences
    final preferences = ref.watch(basePreferencesProvider);
    final themeMode =
        ref.watch(appearancePreferencesProvider).themeMode().get();
    final warningBanner = ref.watch(bannerProvider('warning'));
    _warning = warningBanner.first;
    _warningMessage = warningBanner.second;
    _indexing = ref.watch(bannerProvider('indexing')).first;
    _downloadedOnly = preferences.downloadedOnly().get();
    _incognitoMode = preferences.incognitoMode().get();

    // Calculate icon brightness
    final bannerActive = _indexing || _downloadedOnly || _incognitoMode;
    final appBrightness = calculateBrightness(context, themeMode);
    final iconBrightness = getInverseBrightness(appBrightness);

    // Set system navigation icon brightness
    Color trueTransparent = Colors.transparent.withOpacity(0.002);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: trueTransparent,
        statusBarIconBrightness: bannerActive ? appBrightness : iconBrightness,
        systemNavigationBarColor:
            trueTransparent, // Manually set opacity just above 0 to get true transparency
        systemNavigationBarIconBrightness: iconBrightness,
      ),
    );

    // Get top inset
    // final mainInsets = MediaQuery.of(context).viewPadding;
    _topInset = MediaQuery.of(context).viewPadding.top;

    // Create banners
    // - Warning
    double top = 0.0;
    final warningWidget = AnimatedVisibility(
      visible: _warning,
      enter: expandVertically(),
      enterDuration: const Duration(milliseconds: 200),
      exit: shrinkVertically(),
      exitDuration: const Duration(milliseconds: 200),
      child: WarningBanner(
        top: top,
        label: _warningMessage,
      ),
    );
    final warningHeight = _warning ? BANNER_HEIGHT : 0.0;
    top = (top + warningHeight).ceilToDouble();
    // - Indexing
    final indexingBanner = AnimatedVisibility(
      visible: _indexing,
      enter: expandVertically(),
      enterDuration: const Duration(milliseconds: 200),
      exit: shrinkVertically(),
      exitDuration: const Duration(milliseconds: 200),
      child: IndexingDownloadBanner(
        top: top,
      ),
    );
    final indexingHeight = _indexing ? BANNER_HEIGHT : 0.0;
    top = (top + indexingHeight).ceilToDouble();
    // - Downloaded Only
    final downloadedOnlyBanner = AnimatedVisibility(
      visible: _downloadedOnly,
      enter: expandVertically(),
      enterDuration: const Duration(milliseconds: 200),
      exit: shrinkVertically(),
      exitDuration: const Duration(milliseconds: 200),
      child: DownloadedOnlyBanner(
        top: top,
      ),
    );
    final downloadedOnlyHeight = _downloadedOnly ? BANNER_HEIGHT : 0.0;
    top = (top + downloadedOnlyHeight).ceilToDouble();
    // - Incognito Mode
    final incognitoModeBanner = AnimatedVisibility(
      visible: _incognitoMode,
      enter: expandVertically(),
      enterDuration: const Duration(milliseconds: 200),
      exit: shrinkVertically(),
      exitDuration: const Duration(milliseconds: 200),
      child: IncognitoModeBanner(
        top: top,
      ),
    );
    final incognitoModeHeight = _incognitoMode ? BANNER_HEIGHT : 0.0;
    top = (top + incognitoModeHeight).ceilToDouble();

    return Column(
      children: [
        // Warning
        warningWidget,
        // Indexing
        indexingBanner,
        // Downloaded Only
        downloadedOnlyBanner,
        // Incognito Mode
        incognitoModeBanner,
      ],
    );
  }
}

// Warning
class WarningBanner extends StatelessWidget {
  const WarningBanner({
    super.key,
    required this.top,
    required this.label,
  });

  final double top;
  final String label;

  @override
  Widget build(BuildContext context) {
    // Banner variables
    final warningBackgroundColor = context.scheme.error;
    final warningTextColor = context.scheme.onError;

    final height = BANNER_HEIGHT +
        (top == 0 ? MediaQuery.of(context).viewPadding.top : 0.0);

    return BaseBanner(
      label: label,
      backgroundColor: warningBackgroundColor,
      textColor: warningTextColor,
      height: height,
      padding: 16.0,
      top: top == 0,
      textStyle: context.textTheme.bodyMedium?.copyWith(
        color: warningTextColor,
      ),
    );
  }
}

// Indexing
class IndexingDownloadBanner extends StatelessWidget {
  const IndexingDownloadBanner({
    super.key,
    required this.top,
  });

  final double top;

  @override
  Widget build(BuildContext context) {
    // Banner variables
    const indexingLabel = 'Indexing Downloads';
    final indexingBackgroundColor = context.scheme.secondary;
    final indexingTextColor = context.scheme.onSecondary;

    final progressSize = context.textTheme.labelLarge?.fontSize;

    final height = BANNER_HEIGHT +
        (top == 0 ? MediaQuery.of(context).viewPadding.top : 0.0) +
        (progressSize! * 1.5);

    return BaseBanner(
      label: indexingLabel,
      backgroundColor: indexingBackgroundColor,
      textColor: indexingTextColor,
      height: height,
      padding: 8.0,
      top: top == 0,
      widgets: [
        SizedBox(
          height: progressSize,
          width: progressSize,
          child: CircularProgressIndicator(
            value: null,
            color: indexingTextColor,
            strokeWidth: 2.0,
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

// Downloaded Only
class DownloadedOnlyBanner extends StatelessWidget {
  const DownloadedOnlyBanner({
    super.key,
    required this.top,
  });

  final double top;

  @override
  Widget build(BuildContext context) {
    // Banner variables
    const downloadedOnlyLabel = 'Downloaded Only';
    final downloadedOnlyBackgroundColor = context.scheme.tertiary;
    final downloadedOnlyTextColor = context.scheme.onTertiary;

    final height = BANNER_HEIGHT +
        (top == 0 ? MediaQuery.of(context).viewPadding.top : 0.0);

    return BaseBanner(
      label: downloadedOnlyLabel,
      backgroundColor: downloadedOnlyBackgroundColor,
      textColor: downloadedOnlyTextColor,
      height: height,
      top: top == 0 &&
          _topInset > 0, // Secondary check for platforms without status bar
    );
  }
}

// Incognito Mode
class IncognitoModeBanner extends StatelessWidget {
  const IncognitoModeBanner({
    super.key,
    required this.top,
  });

  final double top;

  @override
  Widget build(BuildContext context) {
    // Banner variables
    const incognitoModeLabel = 'Incognito Mode';
    final incognitoModeBackgroundColor = context.scheme.primary;
    final incognitoModeTextColor = context.scheme.onPrimary;

    final height = BANNER_HEIGHT +
        (top == 0 ? MediaQuery.of(context).viewPadding.top : 0.0);

    return BaseBanner(
      label: incognitoModeLabel,
      backgroundColor: incognitoModeBackgroundColor,
      textColor: incognitoModeTextColor,
      height: height,
      top: top == 0 &&
          _topInset > 0, // Secondary check for platforms without status bar
    );
  }
}

class BaseBanner extends StatelessWidget {
  const BaseBanner({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.height,
    this.padding = 2.0,
    this.top = false,
    this.widgets = const [],
    this.textStyle,
  });

  final String label;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double padding;
  final bool top;
  final List<Widget> widgets;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final labelStyle = textStyle ??
        context.textTheme.labelMedium?.copyWith(
          color: textColor,
        );
    return Container(
      constraints: BoxConstraints(
        minHeight: height + padding * 2,
      ),
      width: double.infinity,
      color: backgroundColor,
      alignment: (top) || widgets.isNotEmpty
          ? Alignment.bottomCenter
          : Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: padding,
        ),
        child: Column(
          children: [
            ...widgets,
            Text(
              label,
              style: labelStyle?.copyWith(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
