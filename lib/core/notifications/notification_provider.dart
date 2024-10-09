import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dartx/dartx.dart';

part 'notification_provider.g.dart';

enum NotificationSource {
  library,
  updates,
  history,
  browse,
  more,
}

@riverpod
class NotificationCount extends _$NotificationCount {
  @override
  Map<NotificationSource, int> build() => {
        for (var source in NotificationSource.values) source: 0,
      };

  void increment(NotificationSource source) {
    state = {
      ...state,
      source: state[source]! + 1,
    };
  }

  void decrement(NotificationSource source) {
    state = {
      ...state,
      source: (state[source]! - 1).coerceAtLeast(0),
    };
  }

  int get(NotificationSource? source) => state[source]!;
}
