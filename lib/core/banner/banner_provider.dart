import 'package:dartx/dartx.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_provider.g.dart';

@riverpod
class Banner extends _$Banner {
  @override
  Pair<bool, String> build(String key) {
    return Pair(false, key);
  }

  void toggleActive() {
    state = Pair(!state.first, state.second);
  }

  void setActive(bool active) {
    state = Pair(active, state.second);
  }

  void setMessage(String message) {
    state = Pair(state.first, message);
  }
}
