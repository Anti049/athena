// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemePair {
  String get name => throw _privateConstructorUsedError;
  ThemeData get light => throw _privateConstructorUsedError;
  ThemeData get dark => throw _privateConstructorUsedError;

  /// Create a copy of ThemePair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemePairCopyWith<ThemePair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemePairCopyWith<$Res> {
  factory $ThemePairCopyWith(ThemePair value, $Res Function(ThemePair) then) =
      _$ThemePairCopyWithImpl<$Res, ThemePair>;
  @useResult
  $Res call({String name, ThemeData light, ThemeData dark});
}

/// @nodoc
class _$ThemePairCopyWithImpl<$Res, $Val extends ThemePair>
    implements $ThemePairCopyWith<$Res> {
  _$ThemePairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemePair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemePairImplCopyWith<$Res>
    implements $ThemePairCopyWith<$Res> {
  factory _$$ThemePairImplCopyWith(
          _$ThemePairImpl value, $Res Function(_$ThemePairImpl) then) =
      __$$ThemePairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, ThemeData light, ThemeData dark});
}

/// @nodoc
class __$$ThemePairImplCopyWithImpl<$Res>
    extends _$ThemePairCopyWithImpl<$Res, _$ThemePairImpl>
    implements _$$ThemePairImplCopyWith<$Res> {
  __$$ThemePairImplCopyWithImpl(
      _$ThemePairImpl _value, $Res Function(_$ThemePairImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemePair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_$ThemePairImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$ThemePairImpl with DiagnosticableTreeMixin implements _ThemePair {
  const _$ThemePairImpl(
      {required this.name, required this.light, required this.dark});

  @override
  final String name;
  @override
  final ThemeData light;
  @override
  final ThemeData dark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemePair(name: $name, light: $light, dark: $dark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThemePair'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('light', light))
      ..add(DiagnosticsProperty('dark', dark));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemePairImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.dark, dark) || other.dark == dark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, light, dark);

  /// Create a copy of ThemePair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemePairImplCopyWith<_$ThemePairImpl> get copyWith =>
      __$$ThemePairImplCopyWithImpl<_$ThemePairImpl>(this, _$identity);
}

abstract class _ThemePair implements ThemePair {
  const factory _ThemePair(
      {required final String name,
      required final ThemeData light,
      required final ThemeData dark}) = _$ThemePairImpl;

  @override
  String get name;
  @override
  ThemeData get light;
  @override
  ThemeData get dark;

  /// Create a copy of ThemePair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemePairImplCopyWith<_$ThemePairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
