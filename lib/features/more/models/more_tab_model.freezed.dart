// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_tab_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoreTabState {
// @Default(Stopped()) DownloadQueueState downloadQueueState,
  bool get downloadedOnly => throw _privateConstructorUsedError;
  bool get incognitoMode => throw _privateConstructorUsedError;

  /// Create a copy of MoreTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoreTabStateCopyWith<MoreTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreTabStateCopyWith<$Res> {
  factory $MoreTabStateCopyWith(
          MoreTabState value, $Res Function(MoreTabState) then) =
      _$MoreTabStateCopyWithImpl<$Res, MoreTabState>;
  @useResult
  $Res call({bool downloadedOnly, bool incognitoMode});
}

/// @nodoc
class _$MoreTabStateCopyWithImpl<$Res, $Val extends MoreTabState>
    implements $MoreTabStateCopyWith<$Res> {
  _$MoreTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoreTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadedOnly = null,
    Object? incognitoMode = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoreTabStateImplCopyWith<$Res>
    implements $MoreTabStateCopyWith<$Res> {
  factory _$$MoreTabStateImplCopyWith(
          _$MoreTabStateImpl value, $Res Function(_$MoreTabStateImpl) then) =
      __$$MoreTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool downloadedOnly, bool incognitoMode});
}

/// @nodoc
class __$$MoreTabStateImplCopyWithImpl<$Res>
    extends _$MoreTabStateCopyWithImpl<$Res, _$MoreTabStateImpl>
    implements _$$MoreTabStateImplCopyWith<$Res> {
  __$$MoreTabStateImplCopyWithImpl(
      _$MoreTabStateImpl _value, $Res Function(_$MoreTabStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoreTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadedOnly = null,
    Object? incognitoMode = null,
  }) {
    return _then(_$MoreTabStateImpl(
      downloadedOnly: null == downloadedOnly
          ? _value.downloadedOnly
          : downloadedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      incognitoMode: null == incognitoMode
          ? _value.incognitoMode
          : incognitoMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MoreTabStateImpl implements _MoreTabState {
  const _$MoreTabStateImpl(
      {required this.downloadedOnly, required this.incognitoMode});

// @Default(Stopped()) DownloadQueueState downloadQueueState,
  @override
  final bool downloadedOnly;
  @override
  final bool incognitoMode;

  @override
  String toString() {
    return 'MoreTabState(downloadedOnly: $downloadedOnly, incognitoMode: $incognitoMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoreTabStateImpl &&
            (identical(other.downloadedOnly, downloadedOnly) ||
                other.downloadedOnly == downloadedOnly) &&
            (identical(other.incognitoMode, incognitoMode) ||
                other.incognitoMode == incognitoMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, downloadedOnly, incognitoMode);

  /// Create a copy of MoreTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoreTabStateImplCopyWith<_$MoreTabStateImpl> get copyWith =>
      __$$MoreTabStateImplCopyWithImpl<_$MoreTabStateImpl>(this, _$identity);
}

abstract class _MoreTabState implements MoreTabState {
  const factory _MoreTabState(
      {required final bool downloadedOnly,
      required final bool incognitoMode}) = _$MoreTabStateImpl;

// @Default(Stopped()) DownloadQueueState downloadQueueState,
  @override
  bool get downloadedOnly;
  @override
  bool get incognitoMode;

  /// Create a copy of MoreTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoreTabStateImplCopyWith<_$MoreTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
