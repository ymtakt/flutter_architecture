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

- ローカルファイルを使用する場合

```dart
@Openapi(
  inputSpec: InputSpec(path: 'openapi-spec.yaml'),
)
class ApiConfig {}
```

## 生成方法

### コード生成実行

```bash
# 1. 【メインプロジェクトで】OpenAPI Generatorを実行してAPIクライアントを生成
fvm dart run build_runner build --delete-conflicting-outputs

# 2. 生成されたAPIクライアントのディレクトリに移動
cd lib/external/http/generate/api

# 3. 【生成されたAPIクライアント内で】built_valueなどの内部コード生成を実行
fvm dart run build_runner build --delete-conflicting-outputs


# 4. メインプロジェクトのルートディレクトリに戻る
cd ../../../../..

# 5. 【メインプロジェクトで】最終的なコード生成を実行
fvm dart run build_runner build --delete-conflicting-outputs

# 完全削除が必要な場合
# 1. 生成フォルダを完全削除
rm -rf lib/external/http/generate/api

# 2. build_runnerのキャッシュをクリア
fvm dart run build_runner clean

# 3. Flutterのキャッシュもクリア
fvm flutter clean
fvm flutter pub get

# 4. 再生成
fvm dart run build_runner build --delete-conflicting-outputs

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

```dart
import 'package:todo_api_client/todo_api_client.dart';
import 'package:dio/dio.dart';

// TodosApiクラスを取得
final todosApi = TodoApiClient().getTodosApi();

// GET /api/todos を実行
final response = await todosApi.getApiTodos();


```
