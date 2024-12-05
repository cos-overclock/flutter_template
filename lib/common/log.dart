import 'package:talker_flutter/talker_flutter.dart';

const bool _isDebug = String.fromEnvironment('flavor') != 'release';

final talker = TalkerFlutter.init(
  settings: TalkerSettings(
    enabled: _isDebug,
    useConsoleLogs: _isDebug,
  ),
  observer: ApplicationTalkerObserver(),
);

class ApplicationTalkerObserver extends TalkerObserver {
  ApplicationTalkerObserver();

  @override
  void onError(TalkerError err) {
    super.onError(err);
  }

  @override
  void onException(TalkerException err) {
    super.onException(err);
  }

  @override
  void onLog(TalkerData log) {
    super.onLog(log);
  }
}
