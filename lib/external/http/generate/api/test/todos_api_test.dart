import 'package:test/test.dart';
import 'package:miracle_api_client/miracle_api_client.dart';

/// tests for TodosApi
void main() {
  final instance = MiracleApiClient().getTodosApi();

  group(TodosApi, () {
    // Todo 一覧を取得する
    //
    //Future<GetApiTodos200Response> getApiTodos() async
    test('test getApiTodos', () async {
      // TODO
    });
  });
}
