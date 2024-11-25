import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_state.freezed.dart';

@freezed
class BannerState with _$BannerState {
  const BannerState._();
  const factory BannerState({
    required bool downloadedOnly,
    required bool incognitoMode,
    required bool warning,
    String? warningLabel,
    required bool indexing,
  }) = _BannerState;

  bool get active => downloadedOnly || incognitoMode || warning || indexing;
}
