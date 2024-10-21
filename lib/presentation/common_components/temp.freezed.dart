// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HeaderBar {
  String get label => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  Color get textColor => throw _privateConstructorUsedError;

  /// Create a copy of HeaderBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeaderBarCopyWith<HeaderBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderBarCopyWith<$Res> {
  factory $HeaderBarCopyWith(HeaderBar value, $Res Function(HeaderBar) then) =
      _$HeaderBarCopyWithImpl<$Res, HeaderBar>;
  @useResult
  $Res call({String label, Color color, Color textColor});
}

/// @nodoc
class _$HeaderBarCopyWithImpl<$Res, $Val extends HeaderBar>
    implements $HeaderBarCopyWith<$Res> {
  _$HeaderBarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeaderBar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = null,
    Object? textColor = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeaderBarImplCopyWith<$Res>
    implements $HeaderBarCopyWith<$Res> {
  factory _$$HeaderBarImplCopyWith(
          _$HeaderBarImpl value, $Res Function(_$HeaderBarImpl) then) =
      __$$HeaderBarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, Color color, Color textColor});
}

/// @nodoc
class __$$HeaderBarImplCopyWithImpl<$Res>
    extends _$HeaderBarCopyWithImpl<$Res, _$HeaderBarImpl>
    implements _$$HeaderBarImplCopyWith<$Res> {
  __$$HeaderBarImplCopyWithImpl(
      _$HeaderBarImpl _value, $Res Function(_$HeaderBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeaderBar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = null,
    Object? textColor = null,
  }) {
    return _then(_$HeaderBarImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$HeaderBarImpl implements _HeaderBar {
  const _$HeaderBarImpl(
      {required this.label, required this.color, required this.textColor});

  @override
  final String label;
  @override
  final Color color;
  @override
  final Color textColor;

  @override
  String toString() {
    return 'HeaderBar(label: $label, color: $color, textColor: $textColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderBarImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, color, textColor);

  /// Create a copy of HeaderBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderBarImplCopyWith<_$HeaderBarImpl> get copyWith =>
      __$$HeaderBarImplCopyWithImpl<_$HeaderBarImpl>(this, _$identity);
}

abstract class _HeaderBar implements HeaderBar {
  const factory _HeaderBar(
      {required final String label,
      required final Color color,
      required final Color textColor}) = _$HeaderBarImpl;

  @override
  String get label;
  @override
  Color get color;
  @override
  Color get textColor;

  /// Create a copy of HeaderBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeaderBarImplCopyWith<_$HeaderBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
