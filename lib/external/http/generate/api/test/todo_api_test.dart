import 'package:test/test.dart';
import 'package:miracle_api_client/miracle_api_client.dart';

/// tests for TodoApi
void main() {
  final instance = MiracleApiClient().getTodoApi();

  group(TodoApi, () {
    // Todo を削除する
    //
    //Future<JsonObject> deleteApiTodosByTodoId(String todoId) async
    test('test deleteApiTodosByTodoId', () async {
      // TODO
    });

    // Todo を取得する
    //
    //Future<GetApiTodosByTodoId200Response> getApiTodosByTodoId(String todoId) async
    test('test getApiTodosByTodoId', () async {
      // TODO
    });

    // Todo を作成する
    //
    //Future<PostApiTodos200Response> postApiTodos({ PostApiTodosRequest postApiTodosRequest }) async
    test('test postApiTodos', () async {
      // TODO
    });

    // Todo を更新する
    //
    //Future<GetApiTodosByTodoId200Response> putApiTodosByTodoId(String todoId, { PostApiTodosRequest postApiTodosRequest }) async
    test('test putApiTodosByTodoId', () async {
      // TODO
    });
  });
}
