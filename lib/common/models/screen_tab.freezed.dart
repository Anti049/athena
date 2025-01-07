// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScreenTab {
  String get title => throw _privateConstructorUsedError;
  PageRouteInfo<dynamic> get route => throw _privateConstructorUsedError;
  List<Widget>? get actions => throw _privateConstructorUsedError;

  /// Create a copy of ScreenTab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenTabCopyWith<ScreenTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenTabCopyWith<$Res> {
  factory $ScreenTabCopyWith(ScreenTab value, $Res Function(ScreenTab) then) =
      _$ScreenTabCopyWithImpl<$Res, ScreenTab>;
  @useResult
  $Res call(
      {String title, PageRouteInfo<dynamic> route, List<Widget>? actions});
}

/// @nodoc
class _$ScreenTabCopyWithImpl<$Res, $Val extends ScreenTab>
    implements $ScreenTabCopyWith<$Res> {
  _$ScreenTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenTab
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
abstract class _$$ScreenTabImplCopyWith<$Res>
    implements $ScreenTabCopyWith<$Res> {
  factory _$$ScreenTabImplCopyWith(
          _$ScreenTabImpl value, $Res Function(_$ScreenTabImpl) then) =
      __$$ScreenTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, PageRouteInfo<dynamic> route, List<Widget>? actions});
}

/// @nodoc
class __$$ScreenTabImplCopyWithImpl<$Res>
    extends _$ScreenTabCopyWithImpl<$Res, _$ScreenTabImpl>
    implements _$$ScreenTabImplCopyWith<$Res> {
  __$$ScreenTabImplCopyWithImpl(
      _$ScreenTabImpl _value, $Res Function(_$ScreenTabImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenTab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? actions = freezed,
  }) {
    return _then(_$ScreenTabImpl(
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

class _$ScreenTabImpl extends _ScreenTab {
  const _$ScreenTabImpl(
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
    return 'ScreenTab(title: $title, route: $route, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenTabImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, route, const DeepCollectionEquality().hash(_actions));

  /// Create a copy of ScreenTab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenTabImplCopyWith<_$ScreenTabImpl> get copyWith =>
      __$$ScreenTabImplCopyWithImpl<_$ScreenTabImpl>(this, _$identity);
}

abstract class _ScreenTab extends ScreenTab {
  const factory _ScreenTab(
      {required final String title,
      required final PageRouteInfo<dynamic> route,
      final List<Widget>? actions}) = _$ScreenTabImpl;
  const _ScreenTab._() : super._();

  @override
  String get title;
  @override
  PageRouteInfo<dynamic> get route;
  @override
  List<Widget>? get actions;

  /// Create a copy of ScreenTab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenTabImplCopyWith<_$ScreenTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
