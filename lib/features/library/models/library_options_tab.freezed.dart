// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_options_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LibraryOptionsTab {
  String get title => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  Widget get content => throw _privateConstructorUsedError;

  /// Create a copy of LibraryOptionsTab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryOptionsTabCopyWith<LibraryOptionsTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryOptionsTabCopyWith<$Res> {
  factory $LibraryOptionsTabCopyWith(
          LibraryOptionsTab value, $Res Function(LibraryOptionsTab) then) =
      _$LibraryOptionsTabCopyWithImpl<$Res, LibraryOptionsTab>;
  @useResult
  $Res call({String title, IconData icon, Widget content});
}

/// @nodoc
class _$LibraryOptionsTabCopyWithImpl<$Res, $Val extends LibraryOptionsTab>
    implements $LibraryOptionsTabCopyWith<$Res> {
  _$LibraryOptionsTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryOptionsTab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryOptionsTabImplCopyWith<$Res>
    implements $LibraryOptionsTabCopyWith<$Res> {
  factory _$$LibraryOptionsTabImplCopyWith(_$LibraryOptionsTabImpl value,
          $Res Function(_$LibraryOptionsTabImpl) then) =
      __$$LibraryOptionsTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, IconData icon, Widget content});
}

/// @nodoc
class __$$LibraryOptionsTabImplCopyWithImpl<$Res>
    extends _$LibraryOptionsTabCopyWithImpl<$Res, _$LibraryOptionsTabImpl>
    implements _$$LibraryOptionsTabImplCopyWith<$Res> {
  __$$LibraryOptionsTabImplCopyWithImpl(_$LibraryOptionsTabImpl _value,
      $Res Function(_$LibraryOptionsTabImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryOptionsTab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? content = null,
  }) {
    return _then(_$LibraryOptionsTabImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$LibraryOptionsTabImpl extends _LibraryOptionsTab {
  const _$LibraryOptionsTabImpl(
      {required this.title, required this.icon, required this.content})
      : super._();

  @override
  final String title;
  @override
  final IconData icon;
  @override
  final Widget content;

  @override
  String toString() {
    return 'LibraryOptionsTab(title: $title, icon: $icon, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryOptionsTabImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon, content);

  /// Create a copy of LibraryOptionsTab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryOptionsTabImplCopyWith<_$LibraryOptionsTabImpl> get copyWith =>
      __$$LibraryOptionsTabImplCopyWithImpl<_$LibraryOptionsTabImpl>(
          this, _$identity);
}

abstract class _LibraryOptionsTab extends LibraryOptionsTab {
  const factory _LibraryOptionsTab(
      {required final String title,
      required final IconData icon,
      required final Widget content}) = _$LibraryOptionsTabImpl;
  const _LibraryOptionsTab._() : super._();

  @override
  String get title;
  @override
  IconData get icon;
  @override
  Widget get content;

  /// Create a copy of LibraryOptionsTab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryOptionsTabImplCopyWith<_$LibraryOptionsTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
