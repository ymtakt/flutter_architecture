import 'package:flutter/widgets.dart';
import 'package:flutter_architecture/ui/page/todo/todo_detail_page/todo_detail_page.dart';
import 'package:flutter_architecture/ui/page/todo/todo_edit_page/todo_edit_page.dart';
import 'package:flutter_architecture/ui/page/todo/todo_page/todo_page.dart';
import 'package:flutter_architecture/ui/page/todo/todo_register_page/todo_register_page.dart';
import 'package:flutter_architecture/ui/routing/router_path.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: RouterPath.HOME,
      builder: (BuildContext context, GoRouterState state) => TodoPage(),
    ),
    GoRoute(
      path: RouterPath.TODO_REGISTER,
      builder: (BuildContext context, GoRouterState state) =>
          TodoRegisterPage(),
    ),
    GoRoute(
      path: '${RouterPath.TODO}/:id',
      builder: (BuildContext context, GoRouterState state) =>
          TodoDetailPage(todoId: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '${RouterPath.TODO}/:id/edit',
      builder: (BuildContext context, GoRouterState state) =>
          TodoEditPage(todoId: state.pathParameters['id']!),
    ),
  ],
);
