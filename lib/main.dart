import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

import 'application/bind.dart';
import 'application/router.dart';
import 'common/log.dart';
import 'theme/theme.dart';

void main() async {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    bind();

    // Flutterフレームワーク内のエラーをキャッチ
    FlutterError.onError = (FlutterErrorDetails details) =>
        talker.handle(details.exception, details.stack);

    // Dartの未処理例外をキャッチ
    runApp(ProviderScope(
      observers: [TalkerRiverpodObserver(talker: talker)],
      child: const MainApp(),
    ));
  }, (error, stackTrace) {
    talker.handle(error, stackTrace);
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: const String.fromEnvironment('appName'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: MaterialTheme.darkScheme()),
      darkTheme: ThemeData(colorScheme: MaterialTheme.darkScheme()),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ja", "JP")],
      routerConfig: goRouter,
    );
  }
}
