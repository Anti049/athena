import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:athena/features/settings/application/base_preferences.dart';
import 'package:rxdart/rxdart.dart';

part 'more_tab_model.freezed.dart';
part 'more_tab_model.g.dart';

@riverpod
class MoreTabModel extends _$MoreTabModel {
  @override
  Stream<MoreTabState> build() {
    final preferences = ref.watch(basePreferencesProvider);
    final downloadedOnly = preferences.downloadedOnly().get();
    final incognitoMode = preferences.incognitoMode().get();

    return Rx.combineLatest2(
      Stream.value(downloadedOnly),
      Stream.value(incognitoMode),
      (downloadedOnly, incognitoMode) => MoreTabState(
        downloadedOnly: downloadedOnly,
        incognitoMode: incognitoMode,
      ),
    );
  }
}

@freezed
class MoreTabState with _$MoreTabState {
  const factory MoreTabState({
    // @Default(Stopped()) DownloadQueueState downloadQueueState,
    required bool downloadedOnly,
    required bool incognitoMode,
  }) = _MoreTabState;
}
