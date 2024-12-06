import 'package:drift/drift.dart';

import 'package:flutter_template/database/database.dart';

import 'package:flutter_template/model/user/user.dart';

import 'users.dart';

part 'users_dao.g.dart';

@DriftAccessor(tables: [Users])
class UsersDao extends DatabaseAccessor<AppDatabase> with _$UsersDaoMixin {
  UsersDao(super.db);

  Stream<List<User>> watchUsers() => select(users).watch();

  Stream<User> watchUser(int id) =>
      (select(users)..where((user) => user.id.equals(id))).watchSingle();

  Future<User> createUser(String name) async =>
      await into(users).insertReturning(UsersCompanion.insert(name: name));

  Future<bool> updateUser(User updateUser) async =>
      await (update(users)..where((user) => user.id.equals(updateUser.id)))
          .replace(UsersCompanion(
        name: Value(updateUser.name),
      ));

  Future deleteUser(int id) async =>
      await (delete(users)..where((user) => user.id.equals(id))).go();

  Future deleteAllUsers() => delete(users).go();
}
