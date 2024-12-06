import 'dart:async';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:flutter_template/common/log.dart';

import 'user/users.dart';
import 'package:flutter_template/model/user/user.dart';

part 'database.g.dart';

@DriftDatabase(tables: [Users])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(driftDatabase(
          name: 'app_database',
          native: const DriftNativeOptions(shareAcrossIsolates: true),
        ).interceptWith(LogInterceptor()));

  @override
  int get schemaVersion => 1;
}

class LogInterceptor extends QueryInterceptor {
  void _log(String message) => talker.logCustom(SharedPreferencesLog(message));

  Future<T> _run<T>(
      String description, FutureOr<T> Function() operation) async {
    final stopwatch = Stopwatch()..start();
    _log('Running $description');

    try {
      final result = await operation();
      _log(' => succeeded after ${stopwatch.elapsedMilliseconds}ms');
      return result;
    } on Object catch (e) {
      _log(' => failed after ${stopwatch.elapsedMilliseconds}ms ($e)');
      rethrow;
    }
  }

  @override
  TransactionExecutor beginTransaction(QueryExecutor parent) {
    _log('begin');
    return super.beginTransaction(parent);
  }

  @override
  Future<void> commitTransaction(TransactionExecutor inner) {
    return _run('commit', () => inner.send());
  }

  @override
  Future<void> rollbackTransaction(TransactionExecutor inner) {
    return _run('rollback', () => inner.rollback());
  }

  @override
  Future<void> runBatched(
      QueryExecutor executor, BatchedStatements statements) {
    return _run(
        'batch with $statements', () => executor.runBatched(statements));
  }

  @override
  Future<int> runInsert(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runInsert(statement, args));
  }

  @override
  Future<int> runUpdate(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runUpdate(statement, args));
  }

  @override
  Future<int> runDelete(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runDelete(statement, args));
  }

  @override
  Future<void> runCustom(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runCustom(statement, args));
  }

  @override
  Future<List<Map<String, Object?>>> runSelect(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runSelect(statement, args));
  }
}

class SharedPreferencesLog extends TalkerLog {
  SharedPreferencesLog(String super.message);

  @override
  String get title => 'Drift Database';

  @override
  String? get key => 'drift';

  @override
  AnsiPen get pen => AnsiPen()..gray();
}
