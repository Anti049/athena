import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_banner_provider.g.dart';

@riverpod
class ErrorBanner extends _$ErrorBanner {
  @override
  String build() {
    return '';
  }

  set error(String value) {
    state = value;
  }

  void clear() {
    state = '';
  }

  bool get hasError => state.isNotEmpty;
}
