// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TabItem {
  String get title => throw _privateConstructorUsedError;
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  List<Widget>? get actions => throw _privateConstructorUsedError;

  /// Create a copy of TabItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TabItemCopyWith<TabItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabItemCopyWith<$Res> {
  factory $TabItemCopyWith(TabItem value, $Res Function(TabItem) then) =
      _$TabItemCopyWithImpl<$Res, TabItem>;
  @useResult
  $Res call(
      {String title, PageRouteInfo<dynamic> route, List<Widget>? actions});
}

/// @nodoc
class _$TabItemCopyWithImpl<$Res, $Val extends TabItem>
    implements $TabItemCopyWith<$Res> {
  _$TabItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TabItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? actions = freezed,
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
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabItemImplCopyWith<$Res> implements $TabItemCopyWith<$Res> {
  factory _$$TabItemImplCopyWith(
          _$TabItemImpl value, $Res Function(_$TabItemImpl) then) =
      __$$TabItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, PageRouteInfo<dynamic> route, List<Widget>? actions});
}

/// @nodoc
class __$$TabItemImplCopyWithImpl<$Res>
    extends _$TabItemCopyWithImpl<$Res, _$TabItemImpl>
    implements _$$TabItemImplCopyWith<$Res> {
  __$$TabItemImplCopyWithImpl(
      _$TabItemImpl _value, $Res Function(_$TabItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TabItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? actions = freezed,
  }) {
    return _then(_$TabItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
    ));
  }
}

/// @nodoc

class _$TabItemImpl extends _TabItem {
  const _$TabItemImpl(
      {required this.title, required this.route, final List<Widget>? actions})
      : _actions = actions,
        super._();

  @override
  final String title;
  @override
  final PageRouteInfo<dynamic> route;
  final List<Widget>? _actions;
  @override
  List<Widget>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TabItem(title: $title, route: $route, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, route, const DeepCollectionEquality().hash(_actions));

  /// Create a copy of TabItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabItemImplCopyWith<_$TabItemImpl> get copyWith =>
      __$$TabItemImplCopyWithImpl<_$TabItemImpl>(this, _$identity);
}

abstract class _TabItem extends TabItem {
  const factory _TabItem(
      {required final String title,
      required final PageRouteInfo<dynamic> route,
      final List<Widget>? actions}) = _$TabItemImpl;
  const _TabItem._() : super._();

  @override
  String get title;
  @override
  PageRouteInfo<dynamic> get route;
  @override
  List<Widget>? get actions;

  /// Create a copy of TabItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabItemImplCopyWith<_$TabItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
