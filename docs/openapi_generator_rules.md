# OpenAPI Generator for Flutter

OpenAPI Generator は、OpenAPI 仕様から Flutter で使用可能な Dart コードを自動生成するツールです。
入力: OpenAPI 仕様ファイル（JSON/YAML）
出力: 型安全な Dart クライアントコード

## 事前準備

### 使用パッケージ

- openapi_generator
- openapi_generator_annotations

- API ドキュメント
  - ドキュメントエンドポイントまたは、yaml ファイル

### 生成される内容

- API クライアントが別パッケージとして生成される

### 設定クラスの作成

- ドキュメントパスがある場合

```dart
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'api_client',
    pubAuthor: 'Your Name',
  ),
  inputSpec: RemoteSpec(path: 'https://api.example.com/openapi.json'),
  nputSpec: InputSpec(path: 'openapi-spec.yaml'),
  generatorName: Generator.dio,
  outputDirectory: 'lib/generated/api',
)
class ApiConfig {}
```

## 生成方法

### コード生成実行

コード再生の順番を間違えるとルートディレクトリでビルドに失敗してしまうため必ず以下の方法で行う。
TODO:なぜこのようになるか設定を見直し修正する。

```bash
# 1. pubspec.yamlにて miracle_api_client をコメントアウトし、pub getする

# 2. 【メインプロジェクト】で build_runner でコード生成
fvm dart run build_runner build --delete-conflicting-outputs

# 3. APIクライアントのディレクトリに移動
cd lib/external/http/generate/api

# 4. 【APIクライアントのディレクトリで】で build_runner でコード生成
fvm dart run build_runner build --delete-conflicting-outputs

# 5. メインプロジェクトのルートディレクトリに戻る
cd ../../../../..

# 6. pubspec.yamlにて miracle_api_client のコメントアウトを戻し、pub getする
```

### 生成ファイル

- lib/src/api.dart

  - 全ての API エンドポイントを定義したクラスが生成される
  - このクラスから各　 lib/src/api の参照も可能

- lib/src/api

  - エンドポイントごとにクラスが生成される（定義した HTTP メソッドごとにメソッドが定義されている）

- lib/src/model/

  - レスポンス、リクエストの型を定義したクラスが生成される

- doc
  - API クライアント、レスポンスクラスそれぞれのドキュメントファイルが生成される

## 使用方法

- openapi_generator で自動生成される MiracleApiClient を Provider として提供しているため、Service 層を挟まず直接 Repository 層で httpClient を使用する。
- DioException が Repository 層で呼ばれるが、これは例外処理の判別でのみ使用され、ここから外に Dio の情報が渡ることはない。

```dart
///
@riverpod
MiracleApiClient httpClient(Ref ref) => throw UnimplementedError();

/// 与えられた [baseUrl] で [HttpClient] を作成する。
MiracleApiClient getHttpClient({required String baseUrl}) =>
    MiracleApiClient(dio: _getDio(baseUrl: baseUrl));

Dio _getDio({required String baseUrl}) => DioHttpClient(baseUrl: baseUrl);
```

```dart
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
```

- Entity への変換は openapi_generator から自動生成される API モデルからの変換ロジックを実装する。

```dart
/// Todo エンティティ。
@freezed
class Todo with _$Todo {
  /// [Todo] を生成する。
  const factory Todo({
    required String id,
    required String title,
    required String description,
    required TodoStatus status,
  }) = _Todo;

  /// [GetApiTodos200ResponseTodosInner] から [Todo] を生成する。
  /// API ModelなのでfromAPIModelと命名するルールにする（公式通り）
  factory Todo.fromDto(GetApiTodos200ResponseTodosInner dto) => Todo(
    id: dto.id.toString(),
    title: dto.title,
    description: dto.description,
    status: TodoStatus.notStarted, // completedから判定
  );
}
```
