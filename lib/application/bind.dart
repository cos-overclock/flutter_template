import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:flutter_template/common/log.dart';

import 'package:flutter_template/api/user_api/user_api.dart';
import 'package:flutter_template/api/user_api/user_api_impl_drift.dart';
import 'package:flutter_template/database/database.dart';
import 'package:flutter_template/database/user/users_dao.dart';

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
  final database = AppDatabase();
  GetIt.I.registerSingleton<AppDatabase>(database);
  GetIt.I.registerSingleton<UserApi>(UserApiImplDrift(dao: UsersDao(database)));
}

void _androidBind() {}

void _iOSBind() {}

void _windowsBind() {}

void _macOSBind() {}

void _linuxBind() {}

void _webBind() {}
