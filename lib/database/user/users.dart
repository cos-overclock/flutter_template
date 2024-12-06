import 'package:drift/drift.dart';

import 'package:flutter_template/model/user/user.dart';

@UseRowClass(User)
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}
