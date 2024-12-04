// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchemePair<T> {
  T get light => throw _privateConstructorUsedError;
  T get dark => throw _privateConstructorUsedError;

  /// Create a copy of SchemePair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchemePairCopyWith<T, SchemePair<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemePairCopyWith<T, $Res> {
  factory $SchemePairCopyWith(
          SchemePair<T> value, $Res Function(SchemePair<T>) then) =
      _$SchemePairCopyWithImpl<T, $Res, SchemePair<T>>;
  @useResult
  $Res call({T light, T dark});
}

/// @nodoc
class _$SchemePairCopyWithImpl<T, $Res, $Val extends SchemePair<T>>
    implements $SchemePairCopyWith<T, $Res> {
  _$SchemePairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchemePair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = freezed,
    Object? dark = freezed,
  }) {
    return _then(_value.copyWith(
      light: freezed == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as T,
      dark: freezed == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchemePairImplCopyWith<T, $Res>
    implements $SchemePairCopyWith<T, $Res> {
  factory _$$SchemePairImplCopyWith(
          _$SchemePairImpl<T> value, $Res Function(_$SchemePairImpl<T>) then) =
      __$$SchemePairImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T light, T dark});
}

/// @nodoc
class __$$SchemePairImplCopyWithImpl<T, $Res>
    extends _$SchemePairCopyWithImpl<T, $Res, _$SchemePairImpl<T>>
    implements _$$SchemePairImplCopyWith<T, $Res> {
  __$$SchemePairImplCopyWithImpl(
      _$SchemePairImpl<T> _value, $Res Function(_$SchemePairImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SchemePair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = freezed,
    Object? dark = freezed,
  }) {
    return _then(_$SchemePairImpl<T>(
      light: freezed == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as T,
      dark: freezed == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SchemePairImpl<T> extends _SchemePair<T> {
  const _$SchemePairImpl({required this.light, required this.dark}) : super._();

  @override
  final T light;
  @override
  final T dark;

  @override
  String toString() {
    return 'SchemePair<$T>(light: $light, dark: $dark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemePairImpl<T> &&
            const DeepCollectionEquality().equals(other.light, light) &&
            const DeepCollectionEquality().equals(other.dark, dark));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(light),
      const DeepCollectionEquality().hash(dark));

  /// Create a copy of SchemePair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemePairImplCopyWith<T, _$SchemePairImpl<T>> get copyWith =>
      __$$SchemePairImplCopyWithImpl<T, _$SchemePairImpl<T>>(this, _$identity);
}

abstract class _SchemePair<T> extends SchemePair<T> {
  const factory _SchemePair({required final T light, required final T dark}) =
      _$SchemePairImpl<T>;
  const _SchemePair._() : super._();

  @override
  T get light;
  @override
  T get dark;

  /// Create a copy of SchemePair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchemePairImplCopyWith<T, _$SchemePairImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppTheme {
  String get name => throw _privateConstructorUsedError;
  ThemeCategory get category => throw _privateConstructorUsedError;
  SchemePair<dynamic> get schemes => throw _privateConstructorUsedError;
  FlexSchemeVariant get variant => throw _privateConstructorUsedError;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppThemeCopyWith<AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res, AppTheme>;
  @useResult
  $Res call(
      {String name,
      ThemeCategory category,
      SchemePair<dynamic> schemes,
      FlexSchemeVariant variant});

  $SchemePairCopyWith<dynamic, $Res> get schemes;
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res, $Val extends AppTheme>
    implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? schemes = null,
    Object? variant = null,
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
      schemes: null == schemes
          ? _value.schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as SchemePair<dynamic>,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as FlexSchemeVariant,
    ) as $Val);
  }

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemePairCopyWith<dynamic, $Res> get schemes {
    return $SchemePairCopyWith<dynamic, $Res>(_value.schemes, (value) {
      return _then(_value.copyWith(schemes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppThemeImplCopyWith<$Res>
    implements $AppThemeCopyWith<$Res> {
  factory _$$AppThemeImplCopyWith(
          _$AppThemeImpl value, $Res Function(_$AppThemeImpl) then) =
      __$$AppThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      ThemeCategory category,
      SchemePair<dynamic> schemes,
      FlexSchemeVariant variant});

  @override
  $SchemePairCopyWith<dynamic, $Res> get schemes;
}

/// @nodoc
class __$$AppThemeImplCopyWithImpl<$Res>
    extends _$AppThemeCopyWithImpl<$Res, _$AppThemeImpl>
    implements _$$AppThemeImplCopyWith<$Res> {
  __$$AppThemeImplCopyWithImpl(
      _$AppThemeImpl _value, $Res Function(_$AppThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? schemes = null,
    Object? variant = null,
  }) {
    return _then(_$AppThemeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ThemeCategory,
      schemes: null == schemes
          ? _value.schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as SchemePair<dynamic>,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as FlexSchemeVariant,
    ));
  }
}

/// @nodoc

class _$AppThemeImpl extends _AppTheme {
  const _$AppThemeImpl(
      {required this.name,
      this.category = ThemeCategory.custom,
      required this.schemes,
      this.variant = FlexSchemeVariant.material})
      : super._();

  @override
  final String name;
  @override
  @JsonKey()
  final ThemeCategory category;
  @override
  final SchemePair<dynamic> schemes;
  @override
  @JsonKey()
  final FlexSchemeVariant variant;

  @override
  String toString() {
    return 'AppTheme(name: $name, category: $category, schemes: $schemes, variant: $variant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.schemes, schemes) || other.schemes == schemes) &&
            (identical(other.variant, variant) || other.variant == variant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, category, schemes, variant);

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      __$$AppThemeImplCopyWithImpl<_$AppThemeImpl>(this, _$identity);
}

abstract class _AppTheme extends AppTheme {
  const factory _AppTheme(
      {required final String name,
      final ThemeCategory category,
      required final SchemePair<dynamic> schemes,
      final FlexSchemeVariant variant}) = _$AppThemeImpl;
  const _AppTheme._() : super._();

  @override
  String get name;
  @override
  ThemeCategory get category;
  @override
  SchemePair<dynamic> get schemes;
  @override
  FlexSchemeVariant get variant;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
