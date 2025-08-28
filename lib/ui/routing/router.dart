import 'package:flutter/widgets.dart';
import 'package:flutter_architecture/ui/page/account/account_child_detail_page/account_child_detail_page.dart';
import 'package:flutter_architecture/ui/page/account/account_child_edit_page/account_child_edit_page.dart';
import 'package:flutter_architecture/ui/page/account/account_child_register_page/account_child_register_page.dart';
import 'package:flutter_architecture/ui/page/account/account_page/account_page.dart';
import 'package:flutter_architecture/ui/routing/router_path.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: RouterPath.HOME,
      builder: (BuildContext context, GoRouterState state) => AccountPage(),
    ),
    GoRoute(
      path: RouterPath.CHILD_REGISTER,
      builder: (BuildContext context, GoRouterState state) =>
          AccountChildRegisterPage(),
    ),
    GoRoute(
      path: '${RouterPath.CHILD}/:id',
      builder: (BuildContext context, GoRouterState state) =>
          AccountChildDetailPage(childId: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '${RouterPath.CHILD}/:id/edit',
      builder: (BuildContext context, GoRouterState state) =>
          AccountChildEditPage(childId: state.pathParameters['id']!),
    ),
  ],
);
