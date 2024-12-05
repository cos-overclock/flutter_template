import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:flutter_template/common/log.dart';

import 'package:flutter_template/page/main_page/main_page.dart';
import 'package:flutter_template/page/detail_page/detail_page.dart';
import 'package:flutter_template/page/error_page/error_page.dart';

part 'router.g.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  observers: [TalkerRouteObserver(talker)],
  routes: $appRoutes,
  errorBuilder: (context, state) =>
      ErrorRoute(error: state.error!).build(context, state),
);

@TypedGoRoute<MainRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<DetailRoute>(
      path: '/detail',
    ),
  ],
)
class MainRoute extends GoRouteData {
  const MainRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MainPage();
}

class DetailRoute extends GoRouteData {
  const DetailRoute({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) => DetailPage(id: id);
}

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ErrorPage(error: error);
}
