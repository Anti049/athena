// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannerState {
  bool get downloadedOnly => throw _privateConstructorUsedError;
  bool get incognitoMode => throw _privateConstructorUsedError;
  bool get warning => throw _privateConstructorUsedError;
  String? get warningLabel => throw _privateConstructorUsedError;
  bool get indexing => throw _privateConstructorUsedError;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerStateCopyWith<BannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
  @useResult
  $Res call(
      {bool downloadedOnly,
      bool incognitoMode,
      bool warning,
      String? warningLabel,
      bool indexing});
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadedOnly = null,
    Object? incognitoMode = null,
    Object? warning = null,
    Object? warningLabel = freezed,
    Object? indexing = null,
  }) {
    return _then(_value.copyWith(
      downloadedOnly: null == downloadedOnly
          ? _value.downloadedOnly
          : downloadedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      incognitoMode: null == incognitoMode
          ? _value.incognitoMode
          : incognitoMode // ignore: cast_nullable_to_non_nullable
              as bool,
      warning: null == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as bool,
      warningLabel: freezed == warningLabel
          ? _value.warningLabel
          : warningLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      indexing: null == indexing
          ? _value.indexing
          : indexing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerStateImplCopyWith<$Res>
    implements $BannerStateCopyWith<$Res> {
  factory _$$BannerStateImplCopyWith(
          _$BannerStateImpl value, $Res Function(_$BannerStateImpl) then) =
      __$$BannerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool downloadedOnly,
      bool incognitoMode,
      bool warning,
      String? warningLabel,
      bool indexing});
}

/// @nodoc
class __$$BannerStateImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$BannerStateImpl>
    implements _$$BannerStateImplCopyWith<$Res> {
  __$$BannerStateImplCopyWithImpl(
      _$BannerStateImpl _value, $Res Function(_$BannerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadedOnly = null,
    Object? incognitoMode = null,
    Object? warning = null,
    Object? warningLabel = freezed,
    Object? indexing = null,
  }) {
    return _then(_$BannerStateImpl(
      downloadedOnly: null == downloadedOnly
          ? _value.downloadedOnly
          : downloadedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      incognitoMode: null == incognitoMode
          ? _value.incognitoMode
          : incognitoMode // ignore: cast_nullable_to_non_nullable
              as bool,
      warning: null == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as bool,
      warningLabel: freezed == warningLabel
          ? _value.warningLabel
          : warningLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      indexing: null == indexing
          ? _value.indexing
          : indexing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BannerStateImpl extends _BannerState {
  const _$BannerStateImpl(
      {required this.downloadedOnly,
      required this.incognitoMode,
      required this.warning,
      this.warningLabel,
      required this.indexing})
      : super._();

  @override
  final bool downloadedOnly;
  @override
  final bool incognitoMode;
  @override
  final bool warning;
  @override
  final String? warningLabel;
  @override
  final bool indexing;

  @override
  String toString() {
    return 'BannerState(downloadedOnly: $downloadedOnly, incognitoMode: $incognitoMode, warning: $warning, warningLabel: $warningLabel, indexing: $indexing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerStateImpl &&
            (identical(other.downloadedOnly, downloadedOnly) ||
                other.downloadedOnly == downloadedOnly) &&
            (identical(other.incognitoMode, incognitoMode) ||
                other.incognitoMode == incognitoMode) &&
            (identical(other.warning, warning) || other.warning == warning) &&
            (identical(other.warningLabel, warningLabel) ||
                other.warningLabel == warningLabel) &&
            (identical(other.indexing, indexing) ||
                other.indexing == indexing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, downloadedOnly, incognitoMode,
      warning, warningLabel, indexing);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerStateImplCopyWith<_$BannerStateImpl> get copyWith =>
      __$$BannerStateImplCopyWithImpl<_$BannerStateImpl>(this, _$identity);
}

abstract class _BannerState extends BannerState {
  const factory _BannerState(
      {required final bool downloadedOnly,
      required final bool incognitoMode,
      required final bool warning,
      final String? warningLabel,
      required final bool indexing}) = _$BannerStateImpl;
  const _BannerState._() : super._();

  @override
  bool get downloadedOnly;
  @override
  bool get incognitoMode;
  @override
  bool get warning;
  @override
  String? get warningLabel;
  @override
  bool get indexing;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerStateImplCopyWith<_$BannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
