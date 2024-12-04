// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searchable_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsData {
  String get title => throw _privateConstructorUsedError;
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  List<ISetting> get contents => throw _privateConstructorUsedError;

  /// Create a copy of SettingsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsDataCopyWith<SettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDataCopyWith<$Res> {
  factory $SettingsDataCopyWith(
          SettingsData value, $Res Function(SettingsData) then) =
      _$SettingsDataCopyWithImpl<$Res, SettingsData>;
  @useResult
  $Res call(
      {String title, PageRouteInfo<dynamic> route, List<ISetting> contents});
}

/// @nodoc
class _$SettingsDataCopyWithImpl<$Res, $Val extends SettingsData>
    implements $SettingsDataCopyWith<$Res> {
  _$SettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? contents = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ISetting>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsDataImplCopyWith<$Res>
    implements $SettingsDataCopyWith<$Res> {
  factory _$$SettingsDataImplCopyWith(
          _$SettingsDataImpl value, $Res Function(_$SettingsDataImpl) then) =
      __$$SettingsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, PageRouteInfo<dynamic> route, List<ISetting> contents});
}

/// @nodoc
class __$$SettingsDataImplCopyWithImpl<$Res>
    extends _$SettingsDataCopyWithImpl<$Res, _$SettingsDataImpl>
    implements _$$SettingsDataImplCopyWith<$Res> {
  __$$SettingsDataImplCopyWithImpl(
      _$SettingsDataImpl _value, $Res Function(_$SettingsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? contents = null,
  }) {
    return _then(_$SettingsDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ISetting>,
    ));
  }
}

/// @nodoc

class _$SettingsDataImpl implements _SettingsData {
  const _$SettingsDataImpl(
      {required this.title,
      required this.route,
      required final List<ISetting> contents})
      : _contents = contents;

  @override
  final String title;
  @override
  final PageRouteInfo<dynamic> route;
  final List<ISetting> _contents;
  @override
  List<ISetting> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  String toString() {
    return 'SettingsData(title: $title, route: $route, contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, route,
      const DeepCollectionEquality().hash(_contents));

  /// Create a copy of SettingsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsDataImplCopyWith<_$SettingsDataImpl> get copyWith =>
      __$$SettingsDataImplCopyWithImpl<_$SettingsDataImpl>(this, _$identity);
}

abstract class _SettingsData implements SettingsData {
  const factory _SettingsData(
      {required final String title,
      required final PageRouteInfo<dynamic> route,
      required final List<ISetting> contents}) = _$SettingsDataImpl;

  @override
  String get title;
  @override
  PageRouteInfo<dynamic> get route;
  @override
  List<ISetting> get contents;

  /// Create a copy of SettingsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsDataImplCopyWith<_$SettingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingSearchResult {
  String get title => throw _privateConstructorUsedError;
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  String get breadcrumbs => throw _privateConstructorUsedError;
  String get highlightKey => throw _privateConstructorUsedError;

  /// Create a copy of SettingSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingSearchResultCopyWith<SettingSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingSearchResultCopyWith<$Res> {
  factory $SettingSearchResultCopyWith(
          SettingSearchResult value, $Res Function(SettingSearchResult) then) =
      _$SettingSearchResultCopyWithImpl<$Res, SettingSearchResult>;
  @useResult
  $Res call(
      {String title,
      PageRouteInfo<dynamic> route,
      String breadcrumbs,
      String highlightKey});
}

/// @nodoc
class _$SettingSearchResultCopyWithImpl<$Res, $Val extends SettingSearchResult>
    implements $SettingSearchResultCopyWith<$Res> {
  _$SettingSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? breadcrumbs = null,
    Object? highlightKey = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      breadcrumbs: null == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as String,
      highlightKey: null == highlightKey
          ? _value.highlightKey
          : highlightKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingSearchResultImplCopyWith<$Res>
    implements $SettingSearchResultCopyWith<$Res> {
  factory _$$SettingSearchResultImplCopyWith(_$SettingSearchResultImpl value,
          $Res Function(_$SettingSearchResultImpl) then) =
      __$$SettingSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      PageRouteInfo<dynamic> route,
      String breadcrumbs,
      String highlightKey});
}

/// @nodoc
class __$$SettingSearchResultImplCopyWithImpl<$Res>
    extends _$SettingSearchResultCopyWithImpl<$Res, _$SettingSearchResultImpl>
    implements _$$SettingSearchResultImplCopyWith<$Res> {
  __$$SettingSearchResultImplCopyWithImpl(_$SettingSearchResultImpl _value,
      $Res Function(_$SettingSearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? breadcrumbs = null,
    Object? highlightKey = null,
  }) {
    return _then(_$SettingSearchResultImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      breadcrumbs: null == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as String,
      highlightKey: null == highlightKey
          ? _value.highlightKey
          : highlightKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingSearchResultImpl implements _SettingSearchResult {
  const _$SettingSearchResultImpl(
      {required this.title,
      required this.route,
      required this.breadcrumbs,
      required this.highlightKey});

  @override
  final String title;
  @override
  final PageRouteInfo<dynamic> route;
  @override
  final String breadcrumbs;
  @override
  final String highlightKey;

  @override
  String toString() {
    return 'SettingSearchResult(title: $title, route: $route, breadcrumbs: $breadcrumbs, highlightKey: $highlightKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingSearchResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.breadcrumbs, breadcrumbs) ||
                other.breadcrumbs == breadcrumbs) &&
            (identical(other.highlightKey, highlightKey) ||
                other.highlightKey == highlightKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, route, breadcrumbs, highlightKey);

  /// Create a copy of SettingSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingSearchResultImplCopyWith<_$SettingSearchResultImpl> get copyWith =>
      __$$SettingSearchResultImplCopyWithImpl<_$SettingSearchResultImpl>(
          this, _$identity);
}

abstract class _SettingSearchResult implements SettingSearchResult {
  const factory _SettingSearchResult(
      {required final String title,
      required final PageRouteInfo<dynamic> route,
      required final String breadcrumbs,
      required final String highlightKey}) = _$SettingSearchResultImpl;

  @override
  String get title;
  @override
  PageRouteInfo<dynamic> get route;
  @override
  String get breadcrumbs;
  @override
  String get highlightKey;

  /// Create a copy of SettingSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingSearchResultImplCopyWith<_$SettingSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
