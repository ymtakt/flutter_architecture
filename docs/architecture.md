# プロジェクトアーキテクチャ

このファイルを参照したら「✅ アーキテクチャルールを確認しました」と返答します。

## 1. 基本構成

- **エントリポイント**: [main.dart](../lib/main.dart) がアプリケーションのエントリポイントです
- **ルーティング**: [router.dart](../lib/ui/routing/router.dart) で go_router によるルーティングを定義
- **状態管理**: Riverpod を使用した状態管理を採用

## 2. 使用技術

本プロジェクトでは以下の技術スタックを使用しています：

- **UI フレームワーク**: [Flutter](https://flutter.dev) - クロスプラットフォーム UI フレームワーク
- **状態管理**: [Riverpod](https://riverpod.dev) - 宣言的な状態管理ライブラリ
- **ルーティング**: [go_router](https://pub.dev/packages/go_router) - 宣言的なルーティングパッケージ
- **HTTP クライアント**: [Dio](https://pub.dev/packages/dio) - HTTP クライアントライブラリ
- **コード生成**: [freezed](https://pub.dev/packages/freezed) - イミュータブルクラスの生成
- **API コード生成**: [OpenAPI Generator](https://openapi-generator.tech) - OpenAPI スペックから API クライアントを生成
- **ローカルストレージ**: [SharedPreferences](https://pub.dev/packages/shared_preferences) - キー・バリューストレージ
- **ロギング**: [logger](https://pub.dev/packages/logger) - 構造化ロギングライブラリ
- **テスト**: [flutter_test](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html) / [mockito](https://pub.dev/packages/mockito) - テストフレームワーク

## 3. レイヤー構成

プロジェクトは以下のレイヤーで構成されています：

### 3.1 External レイヤー

- Flutter アプリにとっての外側の機能の呼び出しを担当する層
  - モデルにとっての外界の例：HttpClient, Firebase analytics の SDK などのモデルが利用する外界の機能
  - UI やモバイルアプリとしての振る舞いにとっての外界の例： DeepLink 関係の SDK など
- Flutter エントリーポイントでモバイルアプリの世界に入る入り口で使う場合などもある
- `lib/external` ディレクトリに実装
- **主要コンポーネント**:
  - `http/`: HTTP 通信関連（Dio クライアント、インターセプター）
  - `http/generate/api/`: OpenAPI Generator で生成された API クライアント
  - `shared_preferences/`: ローカルストレージアクセス
  - `config/`: アプリ設定（Flavor 設定など）

### 3.2 Model レイヤー

#### 3.2.1 Service

- external 層との通信を行う層
- DTO を定義して返す
- この段階ではクライアントアプリの業務知識と必ずしも一致するわけではない
- `lib/model/service` ディレクトリに実装

#### 3.2.2 Entity

- クライアントアプリとして取り扱う業務知識のデータ（Entity）を定義する
- 業務知識の関心事ごとに分ける
- freezed で定義する
- `lib/model/entity` ディレクトリに実装

#### 3.2.3 Repository

- service 層との通信を行い業務知識を作成する
- DTO から Entity への変換
  例：サーバーサイドで定義されている 3 つの API エンドポイントをまとめて呼び 1 つの Entity を生み出す
- サーバーサイドで定義されている API エンドポイントの通信を行う際は、open api generator を使用しているため、
  service 層（DTO）ではなく ApiClient（APIModel）を使用する
- `lib/model/repository` ディレクトリに実装

#### 3.2.4 Logic

- 業務知識・業務ロジックとして実現したいロジックを実装する（画面関係ない）
  - Notifier で Entity を取得、キャッシュ、操作する（グローバルな状態管理）
    - Repository 層との通信を行う
  - useCase クラスやトップレベルの関数：業務上必要な計算（例：BMI の計算、配列処理、状態管理を伴わないデータの読み書きメソッドの呼び出し）
    - useCase の命名はやることの名前 「やる事 UseCase」
    - メソッドは invoke で確定
- Notifier も viewModel より少なくなる
- このアプリは handler から 直接 Repository を読んで良いので UseCase はそこまで多くならない
- `lib/model/logic` ディレクトリに実装

### 3.3 UI レイヤー

#### 3.3.1 Page

- 各画面の UI を実装する
- pageViewModel を ref.watch して画面の状態を監視する
- イベントハンドリングは全て pageHandler のメソッドを呼ぶことで実現する
- ConsumerWidget を使用して OK
- go router で管理する画面と一致する
- `lib/ui/page` ディレクトリに実装

##### PageViewModel

- ページの状態管理を行うための viewModel
- ページで表示する状態を保持して view と同期する
  - Notifier で実装する
  - freezed で定義した page に必要な状態全体を管理する
  - Page 全体で統合された唯一のローディング・エラー・データ (AsyncValue) を提供する
- repository 層または、logic 層との通信を行い状態の取得や更新に必要な処理を呼び出す
- ライフサイクルが Page と一致する

メモ：
BuildContext NG
UI のことは知らない（Flutter は出てこない）

##### PageHandler

- ページで行われる全てのイベントハンドリングを実装する
- Page からは典型的にはタップ、入力、スワイプなどの UI 操作をトリガーとして呼びだされる
- イベントハンドリング（=ユーザー操作）に伴って実行するべき viewModel,logic または repository 層の処理を呼び出す
  - その際発生する例外をキャッチして必要な場合はユーザーに適切にフィードバックする（例：alertDialog や snackBar を出す）

メモ：
BuildContext OK
UI のことを知っている

#### 3.3.2 Shared

##### Functional

- ページ単位ではないいわゆる部品だが、独立して通信や状態管理を行うべきウィジェット
  - アプリ内様々な画面から利用される
  - 例：ショッピングアプリのカートウィジェット（購入画面、商品一覧、アカウント詳細度複数の画面で使用される）
- xxxSection と命名する
- ウィジェットごとに、SectionWidget,SectionHandler,SectionViewModel が定義される
- `lib/ui/shared/functional` ディレクトリに実装

メモ：
WidgetRef OK

##### Functionless

- view 以外の機能を持たない UI（Widget やスタイルガイドなど） を定義する
  - Typography や AppColor など Figma のスタイルガイド
  - Button や Dialog など Figma の基礎コンポーネントやそれらを組み合わせた AppBar や ListTile などのコンポーネント
- StatelessWidget または StatefulWidget だけで実装する
- 受け取った props を元に view を表示し、イベントハンドリングは受け取ったコールバックを呼び出すのみ
- `lib/ui/shared/functionless` ディレクトリに実装

メモ：
WidgetRef NG

### 3.4 Util レイヤー

- 汎用的なユーティリティ関数とヘルパー
- `lib/util` ディレクトリに実装
- **例**: Logger、MultiPartFormData ヘルパー

## 4. アーキテクチャ図

```txt
┌─────────────────┐
│    main.dart    │ ← エントリポイント
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│   UI/Routing    │ ← go_router によるルーティング
└────────┬────────┘
         │
         ▼
┌─────────────────────────────────────────┐
│                UI Layer                  │
│  ┌──────────┐  ┌──────────────────────┐ │
│  │   Page   │  │      Shared          │ │
│  │ ・Widget │  │ ・Functional Section │ │
│  │ ・VM     │  │ ・Functionless       │ │
│  │ ・Handler│  │   Component          │ │
│  └─────┬────┘  └──────────┬───────────┘ │
└────────┼───────────────────┼─────────────┘
         │                   │
         ▼                   ▼
┌─────────────────────────────────────────┐
│             Model Layer                  │
│  ┌──────────┐  ┌──────────────────────┐ │
│  │  Logic   │  │    Repository        │ │
│  │(Notifier)│◄─┤  (API Client使用)    │ │
│  └──────────┘  └──────────┬───────────┘ │
│                            │             │
│                 ┌──────────▼───────────┐ │
│                 │       Entity         │ │
│                 │    (freezed使用)     │ │
│                 └──────────────────────┘ │
└─────────────────────────────────────────┘
         │
         ▼
┌─────────────────────────────────────────┐
│           External Layer                 │
│  ┌──────────────┐  ┌─────────────────┐  │
│  │ HTTP Client  │  │SharedPreferences│  │
│  │ (Dio + API)  │  │                 │  │
│  └──────────────┘  └─────────────────┘  │
└─────────────────────────────────────────┘
```

## 5. ディレクトリ構造

```
lib/
├── external/                    # 外部システムとの連携
│   ├── config/                 # アプリ設定
│   │   └── flavor.dart
│   ├── http/                   # HTTP 通信
│   │   ├── api_config.dart
│   │   ├── http_client.dart
│   │   ├── internal/          # Dio 実装
│   │   └── generate/          # OpenAPI 生成コード
│   └── shared_preferences/    # ローカルストレージ
├── model/                      # ビジネスロジック層
│   ├── entity/                # データモデル
│   │   └── feature/
│   │       └── todo.dart
│   ├── logic/                 # ビジネスロジック・状態管理
│   │   └── feature/
│   │       ├── auth/
│   │       └── event/
│   └── repository/            # データアクセス層
│       └── feature/
│           └── todo/
├── ui/                        # プレゼンテーション層
│   ├── page/                  # 画面
│   │   └── todo/
│   │       ├── todo_page/
│   │       │   ├── todo_page.dart
│   │       │   └── todo_page_view_model.dart
│   │       ├── todo_detail_page/
│   │       ├── todo_edit_page/
│   │       └── todo_register_page/
│   ├── routing/               # ルーティング
│   │   ├── router.dart
│   │   └── router_path.dart
│   └── shared/                # 共通コンポーネント
│       ├── functional/        # 状態を持つコンポーネント
│       │   └── todo_selector/
│       └── functionless/      # 状態を持たないコンポーネント
│           ├── common_button.dart
│           └── common_text_field.dart
├── util/                      # ユーティリティ
│   ├── logger.dart
│   └── multi_part_form_data/
└── main.dart                  # エントリポイント
```

## 6. 開発フロー

1. **API 定義**: OpenAPI スペックから API クライアントを生成
2. **Entity 定義**: freezed を使用してドメインモデルを定義
3. **Repository 実装**: API クライアントを使用してデータアクセス層を実装
4. **Logic/ViewModel 実装**: ビジネスロジックと状態管理を実装
5. **UI 実装**: Page、Handler、必要に応じて Shared コンポーネントを実装

## 7. テスト戦略

- **ViewModel テスト**: 状態管理とビジネスロジックのテスト
- **Logic テスト**: ビジネスロジックの単体テスト
- **Util テスト**: 純粋な Dart のトップレベル関数のたテスト
