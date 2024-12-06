import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/api/user_api/user_api.dart';

import 'package:flutter_template/model/user/user.dart';

part 'user_provider.g.dart';

@riverpod
Stream<User> user(Ref ref, int id) => GetIt.I.get<UserApi>().getUser(id);
