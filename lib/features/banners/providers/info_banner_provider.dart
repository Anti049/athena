import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'info_banner_provider.g.dart';

@riverpod
class InfoBanner extends _$InfoBanner {
  @override
  String build() {
    return '';
  }

  set info(String value) {
    state = value;
  }

  void clear() {
    state = '';
  }

  bool get hasInfo => state.isNotEmpty;
}
