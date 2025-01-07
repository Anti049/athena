import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'warning_banner_provider.g.dart';

@riverpod
class WarningBanner extends _$WarningBanner {
  @override
  String build() {
    return '';
  }

  set warning(String value) {
    state = value;
  }

  void clear() {
    state = '';
  }

  bool get hasWarning => state.isNotEmpty;
}
