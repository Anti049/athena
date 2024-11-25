// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LibraryFilters {
  bool? get filterDownloaded => throw _privateConstructorUsedError;
  bool? get filterUnread => throw _privateConstructorUsedError;
  bool? get filterStarted => throw _privateConstructorUsedError;
  bool? get filterBookmarked => throw _privateConstructorUsedError;
  bool? get filterCompleted => throw _privateConstructorUsedError;

  /// Create a copy of LibraryFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryFiltersCopyWith<LibraryFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryFiltersCopyWith<$Res> {
  factory $LibraryFiltersCopyWith(
          LibraryFilters value, $Res Function(LibraryFilters) then) =
      _$LibraryFiltersCopyWithImpl<$Res, LibraryFilters>;
  @useResult
  $Res call(
      {bool? filterDownloaded,
      bool? filterUnread,
      bool? filterStarted,
      bool? filterBookmarked,
      bool? filterCompleted});
}

/// @nodoc
class _$LibraryFiltersCopyWithImpl<$Res, $Val extends LibraryFilters>
    implements $LibraryFiltersCopyWith<$Res> {
  _$LibraryFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterDownloaded = freezed,
    Object? filterUnread = freezed,
    Object? filterStarted = freezed,
    Object? filterBookmarked = freezed,
    Object? filterCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      filterDownloaded: freezed == filterDownloaded
          ? _value.filterDownloaded
          : filterDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterUnread: freezed == filterUnread
          ? _value.filterUnread
          : filterUnread // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterStarted: freezed == filterStarted
          ? _value.filterStarted
          : filterStarted // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterBookmarked: freezed == filterBookmarked
          ? _value.filterBookmarked
          : filterBookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterCompleted: freezed == filterCompleted
          ? _value.filterCompleted
          : filterCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryFiltersImplCopyWith<$Res>
    implements $LibraryFiltersCopyWith<$Res> {
  factory _$$LibraryFiltersImplCopyWith(_$LibraryFiltersImpl value,
          $Res Function(_$LibraryFiltersImpl) then) =
      __$$LibraryFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? filterDownloaded,
      bool? filterUnread,
      bool? filterStarted,
      bool? filterBookmarked,
      bool? filterCompleted});
}

/// @nodoc
class __$$LibraryFiltersImplCopyWithImpl<$Res>
    extends _$LibraryFiltersCopyWithImpl<$Res, _$LibraryFiltersImpl>
    implements _$$LibraryFiltersImplCopyWith<$Res> {
  __$$LibraryFiltersImplCopyWithImpl(
      _$LibraryFiltersImpl _value, $Res Function(_$LibraryFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterDownloaded = freezed,
    Object? filterUnread = freezed,
    Object? filterStarted = freezed,
    Object? filterBookmarked = freezed,
    Object? filterCompleted = freezed,
  }) {
    return _then(_$LibraryFiltersImpl(
      filterDownloaded: freezed == filterDownloaded
          ? _value.filterDownloaded
          : filterDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterUnread: freezed == filterUnread
          ? _value.filterUnread
          : filterUnread // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterStarted: freezed == filterStarted
          ? _value.filterStarted
          : filterStarted // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterBookmarked: freezed == filterBookmarked
          ? _value.filterBookmarked
          : filterBookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterCompleted: freezed == filterCompleted
          ? _value.filterCompleted
          : filterCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LibraryFiltersImpl extends _LibraryFilters {
  const _$LibraryFiltersImpl(
      {required this.filterDownloaded,
      required this.filterUnread,
      required this.filterStarted,
      required this.filterBookmarked,
      required this.filterCompleted})
      : super._();

  @override
  final bool? filterDownloaded;
  @override
  final bool? filterUnread;
  @override
  final bool? filterStarted;
  @override
  final bool? filterBookmarked;
  @override
  final bool? filterCompleted;

  @override
  String toString() {
    return 'LibraryFilters(filterDownloaded: $filterDownloaded, filterUnread: $filterUnread, filterStarted: $filterStarted, filterBookmarked: $filterBookmarked, filterCompleted: $filterCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryFiltersImpl &&
            (identical(other.filterDownloaded, filterDownloaded) ||
                other.filterDownloaded == filterDownloaded) &&
            (identical(other.filterUnread, filterUnread) ||
                other.filterUnread == filterUnread) &&
            (identical(other.filterStarted, filterStarted) ||
                other.filterStarted == filterStarted) &&
            (identical(other.filterBookmarked, filterBookmarked) ||
                other.filterBookmarked == filterBookmarked) &&
            (identical(other.filterCompleted, filterCompleted) ||
                other.filterCompleted == filterCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterDownloaded, filterUnread,
      filterStarted, filterBookmarked, filterCompleted);

  /// Create a copy of LibraryFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryFiltersImplCopyWith<_$LibraryFiltersImpl> get copyWith =>
      __$$LibraryFiltersImplCopyWithImpl<_$LibraryFiltersImpl>(
          this, _$identity);
}

abstract class _LibraryFilters extends LibraryFilters {
  const factory _LibraryFilters(
      {required final bool? filterDownloaded,
      required final bool? filterUnread,
      required final bool? filterStarted,
      required final bool? filterBookmarked,
      required final bool? filterCompleted}) = _$LibraryFiltersImpl;
  const _LibraryFilters._() : super._();

  @override
  bool? get filterDownloaded;
  @override
  bool? get filterUnread;
  @override
  bool? get filterStarted;
  @override
  bool? get filterBookmarked;
  @override
  bool? get filterCompleted;

  /// Create a copy of LibraryFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryFiltersImplCopyWith<_$LibraryFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
