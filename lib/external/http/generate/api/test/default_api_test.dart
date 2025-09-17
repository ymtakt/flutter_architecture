import 'package:test/test.dart';
import 'package:miracle_api_client/miracle_api_client.dart';

/// tests for DefaultApi
void main() {
  final instance = MiracleApiClient().getDefaultApi();

  group(DefaultApi, () {
    // アプリケーションの疎通確認用のハンドラ
    //
    //Future<GetIndex200Response> getIndex() async
    test('test getIndex', () async {
      // TODO
    });
  });
}
