// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LibraryItem {
  LibraryWork get work => throw _privateConstructorUsedError;
  int get downloadCount => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  bool get isLocal => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  Ref<Object?>? get ref => throw _privateConstructorUsedError;

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryItemCopyWith<LibraryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemCopyWith<$Res> {
  factory $LibraryItemCopyWith(
          LibraryItem value, $Res Function(LibraryItem) then) =
      _$LibraryItemCopyWithImpl<$Res, LibraryItem>;
  @useResult
  $Res call(
      {LibraryWork work,
      int downloadCount,
      int unreadCount,
      bool isLocal,
      String source,
      Ref<Object?>? ref});

  $LibraryWorkCopyWith<$Res> get work;
}

/// @nodoc
class _$LibraryItemCopyWithImpl<$Res, $Val extends LibraryItem>
    implements $LibraryItemCopyWith<$Res> {
  _$LibraryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
    Object? downloadCount = null,
    Object? unreadCount = null,
    Object? isLocal = null,
    Object? source = null,
    Object? ref = freezed,
  }) {
    return _then(_value.copyWith(
      work: null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as LibraryWork,
      downloadCount: null == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as Ref<Object?>?,
    ) as $Val);
  }

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LibraryWorkCopyWith<$Res> get work {
    return $LibraryWorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LibraryItemImplCopyWith<$Res>
    implements $LibraryItemCopyWith<$Res> {
  factory _$$LibraryItemImplCopyWith(
          _$LibraryItemImpl value, $Res Function(_$LibraryItemImpl) then) =
      __$$LibraryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LibraryWork work,
      int downloadCount,
      int unreadCount,
      bool isLocal,
      String source,
      Ref<Object?>? ref});

  @override
  $LibraryWorkCopyWith<$Res> get work;
}

/// @nodoc
class __$$LibraryItemImplCopyWithImpl<$Res>
    extends _$LibraryItemCopyWithImpl<$Res, _$LibraryItemImpl>
    implements _$$LibraryItemImplCopyWith<$Res> {
  __$$LibraryItemImplCopyWithImpl(
      _$LibraryItemImpl _value, $Res Function(_$LibraryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
    Object? downloadCount = null,
    Object? unreadCount = null,
    Object? isLocal = null,
    Object? source = null,
    Object? ref = freezed,
  }) {
    return _then(_$LibraryItemImpl(
      work: null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as LibraryWork,
      downloadCount: null == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as Ref<Object?>?,
    ));
  }
}

/// @nodoc

class _$LibraryItemImpl extends _LibraryItem {
  const _$LibraryItemImpl(
      {required this.work,
      this.downloadCount = -1,
      this.unreadCount = -1,
      this.isLocal = false,
      this.source = '',
      this.ref})
      : super._();

  @override
  final LibraryWork work;
  @override
  @JsonKey()
  final int downloadCount;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  @JsonKey()
  final bool isLocal;
  @override
  @JsonKey()
  final String source;
  @override
  final Ref<Object?>? ref;

  @override
  String toString() {
    return 'LibraryItem(work: $work, downloadCount: $downloadCount, unreadCount: $unreadCount, isLocal: $isLocal, source: $source, ref: $ref)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryItemImpl &&
            (identical(other.work, work) || other.work == work) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, work, downloadCount, unreadCount, isLocal, source, ref);

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryItemImplCopyWith<_$LibraryItemImpl> get copyWith =>
      __$$LibraryItemImplCopyWithImpl<_$LibraryItemImpl>(this, _$identity);
}

abstract class _LibraryItem extends LibraryItem {
  const factory _LibraryItem(
      {required final LibraryWork work,
      final int downloadCount,
      final int unreadCount,
      final bool isLocal,
      final String source,
      final Ref<Object?>? ref}) = _$LibraryItemImpl;
  const _LibraryItem._() : super._();

  @override
  LibraryWork get work;
  @override
  int get downloadCount;
  @override
  int get unreadCount;
  @override
  bool get isLocal;
  @override
  String get source;
  @override
  Ref<Object?>? get ref;

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryItemImplCopyWith<_$LibraryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
