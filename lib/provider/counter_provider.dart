import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_template/model/counter.dart';

part 'counter_provider.g.dart';

@riverpod
Counter counter(Ref ref) => const Counter(value: 0);
