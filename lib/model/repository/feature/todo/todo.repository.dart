import 'package:dio/dio.dart';
import 'package:flutter_architecture/external/http/extract_http_request_headers.dart';
import 'package:flutter_architecture/external/http/http_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miracle_api_client/miracle_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../entity/feature/todo.dart';
import '../../util/handle_dio_exception.dart';

part 'todo.repository.g.dart';

/// [TodoRepository] クラスのインスタンスを提供する。
@riverpod
TodoRepository todoRepository(Ref ref) => TodoRepository(ref);

/// Todo 関係の通信を行うリポジトリクラス。
class TodoRepository {
  /// [TodoRepository] を生成する。
  const TodoRepository(this._ref);

  /// Riverpod の Ref インスタンス。
  final Ref _ref;

  /// Todo 一覧を取得する。
  ///
  /// 取得に失敗した場合は、空の配列を返す。
  Future<List<Todo>> fetchTodos() async {
    final headers = await _ref.read(extractHttpRequestHeadersProvider)();

    try {
      final response = await _ref
          .read(httpClientProvider)
          .getTodosApi()
          .getApiTodos(headers: headers);
      return response.data?.todos.map(Todo.fromDto).toList() ?? [];
    } on DioException catch (e) {
      // DioException共通に処理する repository util
      throwByDioException(
        e,
        onErrorCode: (errorCode) {
          switch (errorCode) {
            case 'endpoint.getTodos.fetchFailed.1':
              throw FetchTodos400Exception();
            default:
              throw FetchTodosGeneralException();
          }
        },
      );
    } catch (e) {
      throw FetchTodosGeneralException();
    }
  }

  /// Todo を取得する。
  ///
  /// 取得に失敗した場合は、例外をスローする。
  Future<Todo> fetchTodoById(String id) async {
    // これを省略したい場合、ヘルパークラスを作成するのもあり
    final headers = await _ref.read(extractHttpRequestHeadersProvider)();
    try {
      final response = await _ref
          //  httpClientProviderがserviceProviderになるはず
          .read(httpClientProvider)
          .getTodoApi()
          .getApiTodosByTodoId(todoId: id, headers: headers);

      if (response.data?.todo == null) {
        throw FetchTodoNotFoundException();
      }

      return Todo.fromDto(response.data!.todo);
    } on DioException catch (e) {
      // DioException共通に処理する repository util
      throwByDioException(
        e,
        onErrorCode: (errorCode) {
          switch (errorCode) {
            case 'endpoint.getTodo.notFound.1':
              throw FetchTodoNotFoundException();
            default:
              throw FetchTodosGeneralException();
          }
        },
      );
    } catch (e) {
      throw FetchTodosGeneralException();
    }
  }

  /// Todo を作成する。
  ///
  /// 作成に失敗した場合は、例外をスローする。
  Future<void> createTodo({
    required String title,
    required String description,
    required String status,
  }) async {
    // これを省略したい場合、ヘルパークラスを作成するのもあり
    final headers = await _ref.read(extractHttpRequestHeadersProvider)();

    final postApiTodosRequest = PostApiTodosRequest(
      (b) => b
        ..title = title
        ..description = description
        ..completed = status == 'done',
    );
    try {
      await _ref
          //  httpClientProviderがserviceProviderになるはず
          .read(httpClientProvider)
          .getTodoApi()
          .postApiTodos(
            postApiTodosRequest: postApiTodosRequest,
            headers: headers,
          );
    } on DioException catch (e) {
      // DioException共通に処理する repository util
      throwByDioException(e);
    } catch (e) {
      throw CreateTodoGeneralException();
    }
  }

  /// Todo を更新する。
  ///
  /// 更新に失敗した場合は、例外をスローする。
  Future<void> updateTodo({
    required String id,
    required String title,
    required String description,
    required String status,
  }) async {
    final headers = await _ref.read(extractHttpRequestHeadersProvider)();
    final postApiTodosRequest = PostApiTodosRequest(
      (b) => b
        ..title = title
        ..description = description
        ..completed = status == 'done',
    );
    try {
      await _ref
          //  httpClientProviderがserviceProviderになるはず
          .read(httpClientProvider)
          .getTodoApi()
          .putApiTodosByTodoId(
            todoId: id,
            postApiTodosRequest: postApiTodosRequest,
            headers: headers,
          );
    } on DioException catch (e) {
      // DioException共通に処理する repository util
      throwByDioException(
        e,
        onErrorCode: (errorCode) {
          switch (errorCode) {
            case 'endpoint.updateTodo.notFound.1':
              throw UpdateTodoNotFoundException();
            default:
              throw FetchTodosGeneralException();
          }
        },
      );
    } catch (e) {
      throw UpdateTodoGeneralException();
    }
  }

  /// Todo を削除する。
  ///
  /// 削除に失敗した場合は、例外をスローする。
  Future<void> deleteTodo({required String id}) async {
    final headers = await _ref.read(extractHttpRequestHeadersProvider)();
    try {
      await _ref
          //  httpClientProviderがserviceProviderになるはず
          .read(httpClientProvider)
          .getTodoApi()
          .deleteApiTodosByTodoId(todoId: id, headers: headers);
    } on DioException catch (e) {
      // DioException共通に処理する repository util
      throwByDioException(
        e,
        onErrorCode: (errorCode) {
          switch (errorCode) {
            case 'endpoint.deleteTodo.notFound.1':
              throw DeleteTodoNotFoundException();
            default:
              throw FetchTodosGeneralException();
          }
        },
      );
    } catch (e) {
      throw DeleteTodoGeneralException();
    }
  }
}
