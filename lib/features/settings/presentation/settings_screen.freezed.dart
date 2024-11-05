// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_screen.dart';

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
  List<Preference> get contents => throw _privateConstructorUsedError;

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
      {String title, PageRouteInfo<dynamic> route, List<Preference> contents});
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
              as List<Preference>,
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
      {String title, PageRouteInfo<dynamic> route, List<Preference> contents});
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
              as List<Preference>,
    ));
  }
}

/// @nodoc

class _$SettingsDataImpl implements _SettingsData {
  const _$SettingsDataImpl(
      {required this.title,
      required this.route,
      required final List<Preference> contents})
      : _contents = contents;

  @override
  final String title;
  @override
  final PageRouteInfo<dynamic> route;
  final List<Preference> _contents;
  @override
  List<Preference> get contents {
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
      required final List<Preference> contents}) = _$SettingsDataImpl;

  @override
  String get title;
  @override
  PageRouteInfo<dynamic> get route;
  @override
  List<Preference> get contents;

  /// Create a copy of SettingsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsDataImplCopyWith<_$SettingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchResultItem {
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get breadcrumbs => throw _privateConstructorUsedError;
  String get highlightKey => throw _privateConstructorUsedError;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultItemCopyWith<SearchResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultItemCopyWith<$Res> {
  factory $SearchResultItemCopyWith(
          SearchResultItem value, $Res Function(SearchResultItem) then) =
      _$SearchResultItemCopyWithImpl<$Res, SearchResultItem>;
  @useResult
  $Res call(
      {PageRouteInfo<dynamic> route,
      String title,
      String breadcrumbs,
      String highlightKey});
}

/// @nodoc
class _$SearchResultItemCopyWithImpl<$Res, $Val extends SearchResultItem>
    implements $SearchResultItemCopyWith<$Res> {
  _$SearchResultItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? title = null,
    Object? breadcrumbs = null,
    Object? highlightKey = null,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$SearchResultItemImplCopyWith<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  factory _$$SearchResultItemImplCopyWith(_$SearchResultItemImpl value,
          $Res Function(_$SearchResultItemImpl) then) =
      __$$SearchResultItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageRouteInfo<dynamic> route,
      String title,
      String breadcrumbs,
      String highlightKey});
}

/// @nodoc
class __$$SearchResultItemImplCopyWithImpl<$Res>
    extends _$SearchResultItemCopyWithImpl<$Res, _$SearchResultItemImpl>
    implements _$$SearchResultItemImplCopyWith<$Res> {
  __$$SearchResultItemImplCopyWithImpl(_$SearchResultItemImpl _value,
      $Res Function(_$SearchResultItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? title = null,
    Object? breadcrumbs = null,
    Object? highlightKey = null,
  }) {
    return _then(_$SearchResultItemImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SearchResultItemImpl implements _SearchResultItem {
  const _$SearchResultItemImpl(
      {required this.route,
      required this.title,
      required this.breadcrumbs,
      required this.highlightKey});

  @override
  final PageRouteInfo<dynamic> route;
  @override
  final String title;
  @override
  final String breadcrumbs;
  @override
  final String highlightKey;

  @override
  String toString() {
    return 'SearchResultItem(route: $route, title: $title, breadcrumbs: $breadcrumbs, highlightKey: $highlightKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultItemImpl &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.breadcrumbs, breadcrumbs) ||
                other.breadcrumbs == breadcrumbs) &&
            (identical(other.highlightKey, highlightKey) ||
                other.highlightKey == highlightKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, route, title, breadcrumbs, highlightKey);

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultItemImplCopyWith<_$SearchResultItemImpl> get copyWith =>
      __$$SearchResultItemImplCopyWithImpl<_$SearchResultItemImpl>(
          this, _$identity);
}

abstract class _SearchResultItem implements SearchResultItem {
  const factory _SearchResultItem(
      {required final PageRouteInfo<dynamic> route,
      required final String title,
      required final String breadcrumbs,
      required final String highlightKey}) = _$SearchResultItemImpl;

  @override
  PageRouteInfo<dynamic> get route;
  @override
  String get title;
  @override
  String get breadcrumbs;
  @override
  String get highlightKey;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultItemImplCopyWith<_$SearchResultItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
