import 'package:athena/features/story/models/author.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';

@freezed
class Story with _$Story {
  const Story._();

  const factory Story({
    required int id,
    required String title,
    required List<Author> authors,
    required String description,
    required int chapters,
    required int words,
  }) = _Story;
}
