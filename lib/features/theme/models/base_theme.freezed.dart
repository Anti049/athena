// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseTheme {
  String get name => throw _privateConstructorUsedError;
  ThemeCategory get category => throw _privateConstructorUsedError;
  ColorScheme? get lightScheme => throw _privateConstructorUsedError;
  ColorScheme? get darkScheme => throw _privateConstructorUsedError;
  Map<double, ColorScheme>? get lightSchemes =>
      throw _privateConstructorUsedError;
  Map<double, ColorScheme>? get darkSchemes =>
      throw _privateConstructorUsedError;
  ThemeInfo? get info => throw _privateConstructorUsedError;

  /// Create a copy of BaseTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseThemeCopyWith<BaseTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseThemeCopyWith<$Res> {
  factory $BaseThemeCopyWith(BaseTheme value, $Res Function(BaseTheme) then) =
      _$BaseThemeCopyWithImpl<$Res, BaseTheme>;
  @useResult
  $Res call(
      {String name,
      ThemeCategory category,
      ColorScheme? lightScheme,
      ColorScheme? darkScheme,
      Map<double, ColorScheme>? lightSchemes,
      Map<double, ColorScheme>? darkSchemes,
      ThemeInfo? info});
}

/// @nodoc
class _$BaseThemeCopyWithImpl<$Res, $Val extends BaseTheme>
    implements $BaseThemeCopyWith<$Res> {
  _$BaseThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? lightScheme = freezed,
    Object? darkScheme = freezed,
    Object? lightSchemes = freezed,
    Object? darkSchemes = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ThemeCategory,
      lightScheme: freezed == lightScheme
          ? _value.lightScheme
          : lightScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme?,
      darkScheme: freezed == darkScheme
          ? _value.darkScheme
          : darkScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme?,
      lightSchemes: freezed == lightSchemes
          ? _value.lightSchemes
          : lightSchemes // ignore: cast_nullable_to_non_nullable
              as Map<double, ColorScheme>?,
      darkSchemes: freezed == darkSchemes
          ? _value.darkSchemes
          : darkSchemes // ignore: cast_nullable_to_non_nullable
              as Map<double, ColorScheme>?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ThemeInfo?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseThemeImplCopyWith<$Res>
    implements $BaseThemeCopyWith<$Res> {
  factory _$$BaseThemeImplCopyWith(
          _$BaseThemeImpl value, $Res Function(_$BaseThemeImpl) then) =
      __$$BaseThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      ThemeCategory category,
      ColorScheme? lightScheme,
      ColorScheme? darkScheme,
      Map<double, ColorScheme>? lightSchemes,
      Map<double, ColorScheme>? darkSchemes,
      ThemeInfo? info});
}

/// @nodoc
class __$$BaseThemeImplCopyWithImpl<$Res>
    extends _$BaseThemeCopyWithImpl<$Res, _$BaseThemeImpl>
    implements _$$BaseThemeImplCopyWith<$Res> {
  __$$BaseThemeImplCopyWithImpl(
      _$BaseThemeImpl _value, $Res Function(_$BaseThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? lightScheme = freezed,
    Object? darkScheme = freezed,
    Object? lightSchemes = freezed,
    Object? darkSchemes = freezed,
    Object? info = freezed,
  }) {
    return _then(_$BaseThemeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ThemeCategory,
      lightScheme: freezed == lightScheme
          ? _value.lightScheme
          : lightScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme?,
      darkScheme: freezed == darkScheme
          ? _value.darkScheme
          : darkScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme?,
      lightSchemes: freezed == lightSchemes
          ? _value._lightSchemes
          : lightSchemes // ignore: cast_nullable_to_non_nullable
              as Map<double, ColorScheme>?,
      darkSchemes: freezed == darkSchemes
          ? _value._darkSchemes
          : darkSchemes // ignore: cast_nullable_to_non_nullable
              as Map<double, ColorScheme>?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ThemeInfo?,
    ));
  }
}

/// @nodoc

class _$BaseThemeImpl extends _BaseTheme {
  const _$BaseThemeImpl(
      {required this.name,
      required this.category,
      this.lightScheme,
      this.darkScheme,
      final Map<double, ColorScheme>? lightSchemes,
      final Map<double, ColorScheme>? darkSchemes,
      this.info})
      : _lightSchemes = lightSchemes,
        _darkSchemes = darkSchemes,
        super._();

  @override
  final String name;
  @override
  final ThemeCategory category;
  @override
  final ColorScheme? lightScheme;
  @override
  final ColorScheme? darkScheme;
  final Map<double, ColorScheme>? _lightSchemes;
  @override
  Map<double, ColorScheme>? get lightSchemes {
    final value = _lightSchemes;
    if (value == null) return null;
    if (_lightSchemes is EqualUnmodifiableMapView) return _lightSchemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<double, ColorScheme>? _darkSchemes;
  @override
  Map<double, ColorScheme>? get darkSchemes {
    final value = _darkSchemes;
    if (value == null) return null;
    if (_darkSchemes is EqualUnmodifiableMapView) return _darkSchemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final ThemeInfo? info;

  @override
  String toString() {
    return 'BaseTheme(name: $name, category: $category, lightScheme: $lightScheme, darkScheme: $darkScheme, lightSchemes: $lightSchemes, darkSchemes: $darkSchemes, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseThemeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.lightScheme, lightScheme) ||
                other.lightScheme == lightScheme) &&
            (identical(other.darkScheme, darkScheme) ||
                other.darkScheme == darkScheme) &&
            const DeepCollectionEquality()
                .equals(other._lightSchemes, _lightSchemes) &&
            const DeepCollectionEquality()
                .equals(other._darkSchemes, _darkSchemes) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      category,
      lightScheme,
      darkScheme,
      const DeepCollectionEquality().hash(_lightSchemes),
      const DeepCollectionEquality().hash(_darkSchemes),
      info);

  /// Create a copy of BaseTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseThemeImplCopyWith<_$BaseThemeImpl> get copyWith =>
      __$$BaseThemeImplCopyWithImpl<_$BaseThemeImpl>(this, _$identity);
}

abstract class _BaseTheme extends BaseTheme {
  const factory _BaseTheme(
      {required final String name,
      required final ThemeCategory category,
      final ColorScheme? lightScheme,
      final ColorScheme? darkScheme,
      final Map<double, ColorScheme>? lightSchemes,
      final Map<double, ColorScheme>? darkSchemes,
      final ThemeInfo? info}) = _$BaseThemeImpl;
  const _BaseTheme._() : super._();

  @override
  String get name;
  @override
  ThemeCategory get category;
  @override
  ColorScheme? get lightScheme;
  @override
  ColorScheme? get darkScheme;
  @override
  Map<double, ColorScheme>? get lightSchemes;
  @override
  Map<double, ColorScheme>? get darkSchemes;
  @override
  ThemeInfo? get info;

  /// Create a copy of BaseTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseThemeImplCopyWith<_$BaseThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
