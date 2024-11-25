// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Work {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get coverURL => throw _privateConstructorUsedError;
  int get chapters => throw _privateConstructorUsedError;
  int get words => throw _privateConstructorUsedError;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res, Work>;
  @useResult
  $Res call(
      {int id,
      String title,
      String author,
      String description,
      String coverURL,
      int chapters,
      int words});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res, $Val extends Work>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? coverURL = null,
    Object? chapters = null,
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverURL: null == coverURL
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as int,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkImplCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$WorkImplCopyWith(
          _$WorkImpl value, $Res Function(_$WorkImpl) then) =
      __$$WorkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String author,
      String description,
      String coverURL,
      int chapters,
      int words});
}

/// @nodoc
class __$$WorkImplCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$WorkImpl>
    implements _$$WorkImplCopyWith<$Res> {
  __$$WorkImplCopyWithImpl(_$WorkImpl _value, $Res Function(_$WorkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? coverURL = null,
    Object? chapters = null,
    Object? words = null,
  }) {
    return _then(_$WorkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverURL: null == coverURL
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as int,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WorkImpl extends _Work {
  const _$WorkImpl(
      {required this.id,
      required this.title,
      required this.author,
      required this.description,
      required this.coverURL,
      required this.chapters,
      required this.words})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String author;
  @override
  final String description;
  @override
  final String coverURL;
  @override
  final int chapters;
  @override
  final int words;

  @override
  String toString() {
    return 'Work(id: $id, title: $title, author: $author, description: $description, coverURL: $coverURL, chapters: $chapters, words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverURL, coverURL) ||
                other.coverURL == coverURL) &&
            (identical(other.chapters, chapters) ||
                other.chapters == chapters) &&
            (identical(other.words, words) || other.words == words));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, author, description, coverURL, chapters, words);

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkImplCopyWith<_$WorkImpl> get copyWith =>
      __$$WorkImplCopyWithImpl<_$WorkImpl>(this, _$identity);
}

abstract class _Work extends Work {
  const factory _Work(
      {required final int id,
      required final String title,
      required final String author,
      required final String description,
      required final String coverURL,
      required final int chapters,
      required final int words}) = _$WorkImpl;
  const _Work._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get author;
  @override
  String get description;
  @override
  String get coverURL;
  @override
  int get chapters;
  @override
  int get words;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkImplCopyWith<_$WorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
