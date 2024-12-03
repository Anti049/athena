// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationItem {
  String get title => throw _privateConstructorUsedError;
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;

  /// Create a copy of NavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavigationItemCopyWith<NavigationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationItemCopyWith<$Res> {
  factory $NavigationItemCopyWith(
          NavigationItem value, $Res Function(NavigationItem) then) =
      _$NavigationItemCopyWithImpl<$Res, NavigationItem>;
  @useResult
  $Res call({String title, PageRouteInfo<dynamic> route, IconData icon});
}

/// @nodoc
class _$NavigationItemCopyWithImpl<$Res, $Val extends NavigationItem>
    implements $NavigationItemCopyWith<$Res> {
  _$NavigationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? icon = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationItemImplCopyWith<$Res>
    implements $NavigationItemCopyWith<$Res> {
  factory _$$NavigationItemImplCopyWith(_$NavigationItemImpl value,
          $Res Function(_$NavigationItemImpl) then) =
      __$$NavigationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, PageRouteInfo<dynamic> route, IconData icon});
}

/// @nodoc
class __$$NavigationItemImplCopyWithImpl<$Res>
    extends _$NavigationItemCopyWithImpl<$Res, _$NavigationItemImpl>
    implements _$$NavigationItemImplCopyWith<$Res> {
  __$$NavigationItemImplCopyWithImpl(
      _$NavigationItemImpl _value, $Res Function(_$NavigationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? icon = null,
  }) {
    return _then(_$NavigationItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$NavigationItemImpl extends _NavigationItem {
  const _$NavigationItemImpl(
      {required this.title, required this.route, required this.icon})
      : super._();

  @override
  final String title;
  @override
  final PageRouteInfo<dynamic> route;
  @override
  final IconData icon;

  @override
  String toString() {
    return 'NavigationItem(title: $title, route: $route, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, route, icon);

  /// Create a copy of NavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationItemImplCopyWith<_$NavigationItemImpl> get copyWith =>
      __$$NavigationItemImplCopyWithImpl<_$NavigationItemImpl>(
          this, _$identity);
}

abstract class _NavigationItem extends NavigationItem {
  const factory _NavigationItem(
      {required final String title,
      required final PageRouteInfo<dynamic> route,
      required final IconData icon}) = _$NavigationItemImpl;
  const _NavigationItem._() : super._();

  @override
  String get title;
  @override
  PageRouteInfo<dynamic> get route;
  @override
  IconData get icon;

  /// Create a copy of NavigationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationItemImplCopyWith<_$NavigationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
