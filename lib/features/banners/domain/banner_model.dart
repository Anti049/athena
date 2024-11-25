import 'package:athena/features/banners/presentation/components/banner_widget.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';

enum WidgetLocation {
  top,
  bottom,
  left,
  right,
}

@freezed
class BannerModel with _$BannerModel {
  const BannerModel._();

  const factory BannerModel({
    required String label,
    required Color backgroundColor,
    required Color textColor,
    TextStyle? textStyle,
    required bool visible,
    @Default(24) double height,
    Widget? topWidget,
    Widget? bottomWidget,
    Widget? leftWidget,
    Widget? rightWidget,
    void Function()? dismiss,
  }) = _BannerModel;

  BannerWidget toWidget({
    bool top = false,
  }) {
    return BannerWidget(
      label: label,
      backgroundColor: backgroundColor,
      textColor: textColor,
      textStyle: textStyle,
      top: top,
      height: height,
      visible: visible,
      topWidget: topWidget,
      bottomWidget: bottomWidget,
      leftWidget: leftWidget,
      rightWidget: rightWidget,
      dismiss: dismiss,
    );
  }
}
