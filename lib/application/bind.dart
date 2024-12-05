import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_template/common/log.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:flutter_template/api/data_persistence_api/data_persistence_api.dart';
import 'package:flutter_template/api/data_persistence_api/data_persistence_api_impl_shared_preferences.dart';

void bind() {
  _commonBind();
  if (Platform.isAndroid) {
    _androidBind();
  } else if (Platform.isIOS) {
    _iOSBind();
  } else if (Platform.isWindows) {
    _windowsBind();
  } else if (Platform.isMacOS) {
    _macOSBind();
  } else if (Platform.isLinux) {
    _linuxBind();
  } else if (kIsWeb) {
    _webBind();
  }
}

void _commonBind() {
  GetIt.I.registerSingleton<Talker>(talker);
  GetIt.I.registerSingleton<DataPersistenceApi>(
      DataPersistenceApiImplSharedPreferences());
}

void _androidBind() {}

void _iOSBind() {}

void _windowsBind() {}

void _macOSBind() {}

void _linuxBind() {}

void _webBind() {}
