import 'package:athena/features/banners/presentation/components/banner_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart' hide Banner;

part 'banner.freezed.dart';

@freezed
class Banner with _$Banner {
  const Banner._();

  const factory Banner({
    required String label,
    required Color backgroundColor,
    required Color textColor,
    required bool visible,
  }) = _Banner;

  BannerWidget toWidget({
    bool isTopmost = false,
  }) {
    return BannerWidget(
      label: label,
      backgroundColor: backgroundColor,
      textColor: textColor,
      visible: visible,
      isTopmost: isTopmost,
    );
  }
}
