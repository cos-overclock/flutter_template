import 'package:flutter_template/database/user/users_dao.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:flutter_template/common/log.dart';
import 'package:flutter_template/model/user/user.dart';

import 'user_api.dart';

class UserApiImplDrift implements UserApi {
  void _log(String message) => talker.logCustom(SharedPreferencesLog(message));
  UserApiImplDrift({required this.dao});

  final UsersDao dao;

  @override
  Future<User> createUser(String name) async {
    _log('create user name: $name');
    return await dao.createUser(name).then((result) {
      _log('create user success result: $result');
      return result;
    });
  }

  @override
  Future deleteAllUsers() async {
    _log('delete all users');
    return await dao.deleteAllUsers().then((result) {
      _log('delete all users success result: $result');
      return result;
    });
  }

  @override
  Future deleteUser(int id) async {
    _log('delete user id: $id');
    return await dao.deleteUser(id).then((result) {
      _log('delete user success result: $result');
      return result;
    });
  }

  @override
  Stream<User> getUser(int id) {
    _log('get user');
    return dao.watchUser(id).map((user) {
      _log('get user update user: $user');
      return user;
    });
  }

  @override
  Stream<List<User>> getUsers() {
    _log('get users');
    return dao.watchUsers().map((users) {
      _log('get users update users: $users');
      return users;
    });
  }

  @override
  Future<bool> updateUser(User user) async {
    _log('update user: $user');
    return await dao.updateUser(user).then((result) {
      _log('update user success result: $result');
      return result;
    });
  }
}

class SharedPreferencesLog extends TalkerLog {
  SharedPreferencesLog(String super.message);

  @override
  String get title => 'User Api';

  @override
  String? get key => 'user_api';

  @override
  AnsiPen get pen => AnsiPen()..blue();
}
