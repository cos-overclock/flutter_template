import 'package:flutter_template/model/user/user.dart';

abstract interface class UserApi {
  Stream<List<User>> getUsers();

  Stream<User> getUser(int id);

  Future<User> createUser(String name);

  Future<bool> updateUser(User user);

  Future deleteUser(int id);

  Future deleteAllUsers();
}
