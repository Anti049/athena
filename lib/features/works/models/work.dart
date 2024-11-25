import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';

@freezed
class Work with _$Work {
  const Work._();
  const factory Work({
    required int id,
    required String title,
    required String author,
    required String description,
    required String coverURL,
    required int chapters,
    required int words,
  }) = _Work;
}
