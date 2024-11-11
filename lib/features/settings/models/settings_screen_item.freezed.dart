// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_screen_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsScreenItem {
  String get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  Widget get screen => throw _privateConstructorUsedError;

  /// Create a copy of SettingsScreenItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsScreenItemCopyWith<SettingsScreenItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsScreenItemCopyWith<$Res> {
  factory $SettingsScreenItemCopyWith(
          SettingsScreenItem value, $Res Function(SettingsScreenItem) then) =
      _$SettingsScreenItemCopyWithImpl<$Res, SettingsScreenItem>;
  @useResult
  $Res call({String title, String? subtitle, IconData icon, Widget screen});
}

/// @nodoc
class _$SettingsScreenItemCopyWithImpl<$Res, $Val extends SettingsScreenItem>
    implements $SettingsScreenItemCopyWith<$Res> {
  _$SettingsScreenItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsScreenItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
    Object? icon = null,
    Object? screen = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      screen: null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsScreenItemImplCopyWith<$Res>
    implements $SettingsScreenItemCopyWith<$Res> {
  factory _$$SettingsScreenItemImplCopyWith(_$SettingsScreenItemImpl value,
          $Res Function(_$SettingsScreenItemImpl) then) =
      __$$SettingsScreenItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? subtitle, IconData icon, Widget screen});
}

/// @nodoc
class __$$SettingsScreenItemImplCopyWithImpl<$Res>
    extends _$SettingsScreenItemCopyWithImpl<$Res, _$SettingsScreenItemImpl>
    implements _$$SettingsScreenItemImplCopyWith<$Res> {
  __$$SettingsScreenItemImplCopyWithImpl(_$SettingsScreenItemImpl _value,
      $Res Function(_$SettingsScreenItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsScreenItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
    Object? icon = null,
    Object? screen = null,
  }) {
    return _then(_$SettingsScreenItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      screen: null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$SettingsScreenItemImpl implements _SettingsScreenItem {
  const _$SettingsScreenItemImpl(
      {required this.title,
      this.subtitle,
      required this.icon,
      required this.screen});

  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final IconData icon;
  @override
  final Widget screen;

  @override
  String toString() {
    return 'SettingsScreenItem(title: $title, subtitle: $subtitle, icon: $icon, screen: $screen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsScreenItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.screen, screen) || other.screen == screen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, icon, screen);

  /// Create a copy of SettingsScreenItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsScreenItemImplCopyWith<_$SettingsScreenItemImpl> get copyWith =>
      __$$SettingsScreenItemImplCopyWithImpl<_$SettingsScreenItemImpl>(
          this, _$identity);
}

abstract class _SettingsScreenItem implements SettingsScreenItem {
  const factory _SettingsScreenItem(
      {required final String title,
      final String? subtitle,
      required final IconData icon,
      required final Widget screen}) = _$SettingsScreenItemImpl;

  @override
  String get title;
  @override
  String? get subtitle;
  @override
  IconData get icon;
  @override
  Widget get screen;

  /// Create a copy of SettingsScreenItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsScreenItemImplCopyWith<_$SettingsScreenItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
