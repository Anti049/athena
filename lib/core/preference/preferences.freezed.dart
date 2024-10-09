// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreferencesContainer {
// Locale
  Locale get locale => throw _privateConstructorUsedError; // Theme
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get themeName => throw _privateConstructorUsedError;
  bool get pureBlack => throw _privateConstructorUsedError;
  ContrastLevel get contrastLevel => throw _privateConstructorUsedError;
  bool get downloadedOnly => throw _privateConstructorUsedError;
  bool get incognitoMode => throw _privateConstructorUsedError;

  /// Create a copy of PreferencesContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferencesContainerCopyWith<PreferencesContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesContainerCopyWith<$Res> {
  factory $PreferencesContainerCopyWith(PreferencesContainer value,
          $Res Function(PreferencesContainer) then) =
      _$PreferencesContainerCopyWithImpl<$Res, PreferencesContainer>;
  @useResult
  $Res call(
      {Locale locale,
      ThemeMode themeMode,
      String themeName,
      bool pureBlack,
      ContrastLevel contrastLevel,
      bool downloadedOnly,
      bool incognitoMode});
}

/// @nodoc
class _$PreferencesContainerCopyWithImpl<$Res,
        $Val extends PreferencesContainer>
    implements $PreferencesContainerCopyWith<$Res> {
  _$PreferencesContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? themeMode = null,
    Object? themeName = null,
    Object? pureBlack = null,
    Object? contrastLevel = null,
    Object? downloadedOnly = null,
    Object? incognitoMode = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      themeName: null == themeName
          ? _value.themeName
          : themeName // ignore: cast_nullable_to_non_nullable
              as String,
      pureBlack: null == pureBlack
          ? _value.pureBlack
          : pureBlack // ignore: cast_nullable_to_non_nullable
              as bool,
      contrastLevel: null == contrastLevel
          ? _value.contrastLevel
          : contrastLevel // ignore: cast_nullable_to_non_nullable
              as ContrastLevel,
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
abstract class _$$PreferencesContainerImplCopyWith<$Res>
    implements $PreferencesContainerCopyWith<$Res> {
  factory _$$PreferencesContainerImplCopyWith(_$PreferencesContainerImpl value,
          $Res Function(_$PreferencesContainerImpl) then) =
      __$$PreferencesContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Locale locale,
      ThemeMode themeMode,
      String themeName,
      bool pureBlack,
      ContrastLevel contrastLevel,
      bool downloadedOnly,
      bool incognitoMode});
}

/// @nodoc
class __$$PreferencesContainerImplCopyWithImpl<$Res>
    extends _$PreferencesContainerCopyWithImpl<$Res, _$PreferencesContainerImpl>
    implements _$$PreferencesContainerImplCopyWith<$Res> {
  __$$PreferencesContainerImplCopyWithImpl(_$PreferencesContainerImpl _value,
      $Res Function(_$PreferencesContainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferencesContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? themeMode = null,
    Object? themeName = null,
    Object? pureBlack = null,
    Object? contrastLevel = null,
    Object? downloadedOnly = null,
    Object? incognitoMode = null,
  }) {
    return _then(_$PreferencesContainerImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      themeName: null == themeName
          ? _value.themeName
          : themeName // ignore: cast_nullable_to_non_nullable
              as String,
      pureBlack: null == pureBlack
          ? _value.pureBlack
          : pureBlack // ignore: cast_nullable_to_non_nullable
              as bool,
      contrastLevel: null == contrastLevel
          ? _value.contrastLevel
          : contrastLevel // ignore: cast_nullable_to_non_nullable
              as ContrastLevel,
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

class _$PreferencesContainerImpl
    with DiagnosticableTreeMixin
    implements _PreferencesContainer {
  const _$PreferencesContainerImpl(
      {required this.locale,
      this.themeMode = ThemeMode.system,
      this.themeName = 'default',
      this.pureBlack = false,
      this.contrastLevel = ContrastLevel.normal,
      this.downloadedOnly = false,
      this.incognitoMode = false});

// Locale
  @override
  final Locale locale;
// Theme
  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final String themeName;
  @override
  @JsonKey()
  final bool pureBlack;
  @override
  @JsonKey()
  final ContrastLevel contrastLevel;
  @override
  @JsonKey()
  final bool downloadedOnly;
  @override
  @JsonKey()
  final bool incognitoMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreferencesContainer(locale: $locale, themeMode: $themeMode, themeName: $themeName, pureBlack: $pureBlack, contrastLevel: $contrastLevel, downloadedOnly: $downloadedOnly, incognitoMode: $incognitoMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreferencesContainer'))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('themeName', themeName))
      ..add(DiagnosticsProperty('pureBlack', pureBlack))
      ..add(DiagnosticsProperty('contrastLevel', contrastLevel))
      ..add(DiagnosticsProperty('downloadedOnly', downloadedOnly))
      ..add(DiagnosticsProperty('incognitoMode', incognitoMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesContainerImpl &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.themeName, themeName) ||
                other.themeName == themeName) &&
            (identical(other.pureBlack, pureBlack) ||
                other.pureBlack == pureBlack) &&
            (identical(other.contrastLevel, contrastLevel) ||
                other.contrastLevel == contrastLevel) &&
            (identical(other.downloadedOnly, downloadedOnly) ||
                other.downloadedOnly == downloadedOnly) &&
            (identical(other.incognitoMode, incognitoMode) ||
                other.incognitoMode == incognitoMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale, themeMode, themeName,
      pureBlack, contrastLevel, downloadedOnly, incognitoMode);

  /// Create a copy of PreferencesContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesContainerImplCopyWith<_$PreferencesContainerImpl>
      get copyWith =>
          __$$PreferencesContainerImplCopyWithImpl<_$PreferencesContainerImpl>(
              this, _$identity);
}

abstract class _PreferencesContainer implements PreferencesContainer {
  const factory _PreferencesContainer(
      {required final Locale locale,
      final ThemeMode themeMode,
      final String themeName,
      final bool pureBlack,
      final ContrastLevel contrastLevel,
      final bool downloadedOnly,
      final bool incognitoMode}) = _$PreferencesContainerImpl;

// Locale
  @override
  Locale get locale; // Theme
  @override
  ThemeMode get themeMode;
  @override
  String get themeName;
  @override
  bool get pureBlack;
  @override
  ContrastLevel get contrastLevel;
  @override
  bool get downloadedOnly;
  @override
  bool get incognitoMode;

  /// Create a copy of PreferencesContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesContainerImplCopyWith<_$PreferencesContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
