import 'package:shared_preferences/shared_preferences.dart';

import 'package:talker_flutter/talker_flutter.dart';
import 'package:flutter_template/common/log.dart';

import 'data_persistence_api.dart';

class DataPersistenceApiImplSharedPreferences implements DataPersistenceApi {
  late final SharedPreferencesAsync preferences = SharedPreferencesAsync();

  DataPersistenceApiImplSharedPreferences();

  void _log(String message) => talker.logCustom(SharedPreferencesLog(message));

  @override
  Future<bool?> getBool(String key) async {
    _log('getBool key: $key');
    return await preferences.getBool(key).then((value) {
      _log('getBool success key: $key, value: $value');
      return value;
    });
  }

  @override
  Future<double?> getDouble(String key) async {
    _log('getDouble key: $key');
    return await preferences.getDouble(key).then((value) {
      _log('getDouble success key: $key, value: $value');
      return value;
    });
  }

  @override
  Future<int?> getInt(String key) async {
    _log('getInt key: $key');
    return await preferences.getInt(key).then((value) {
      _log('getInt success key: $key, value: $value');
      return value;
    });
  }

  @override
  Future<String?> getString(String key) async {
    _log('getString key: $key');
    return await preferences.getString(key).then((value) {
      _log('getString success key: $key, value: $value');
      return value;
    });
  }

  @override
  Future<List<String>?> getStringList(String key) async {
    _log('getStringList key: $key');
    return await preferences.getStringList(key).then((value) {
      _log('getStringList success key: $key, value: $value');
      return value;
    });
  }

  @override
  Future<void> setBool(String key, bool value) async {
    _log('setBool key: $key, value: $value');
    return await preferences
        .setBool(key, value)
        .then((_) => _log('setBool success key: $key'));
  }

  @override
  Future<void> setDouble(String key, double value) async {
    _log('setDouble key: $key, value: $value');
    return await preferences
        .setDouble(key, value)
        .then((_) => _log('setDouble success key: $key'));
  }

  @override
  Future setInt(String key, int value) async {
    _log('setInt key: $key, value: $value');
    return await preferences
        .setInt(key, value)
        .then((_) => _log('setInt success key: $key'));
  }

  @override
  Future setString(String key, String value) async {
    _log('setString key: $key, value: $value');
    return await preferences
        .setString(key, value)
        .then((_) => _log('setString success key: $key'));
  }

  @override
  Future setStringList(String key, List<String> value) async {
    _log('setStringList key: $key, value: $value');
    return await preferences
        .setStringList(key, value)
        .then((_) => _log('setStringList success key: $key'));
  }

  @override
  Future remove(String key) async {
    _log('remove success key: $key');
    await preferences.remove(key).then((_) => _log('remove success key: $key'));
  }

  @override
  Future removeAll() async {
    _log('remove all !!');
    await preferences.clear().then((_) => _log('remove all success'));
  }
}

class SharedPreferencesLog extends TalkerLog {
  SharedPreferencesLog(String super.message);

  @override
  String get title => 'Shared Preferences';

  @override
  String? get key => 'shared_preferences';

  @override
  AnsiPen get pen => AnsiPen()..green();
}
