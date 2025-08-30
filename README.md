# flutter_architecture

## ディレクトリ構造

```
.
.
├── external
│   └── shared_preferences
│       ├── shared_preferences_client.dart
│       └── shared_preferences_client.g.dart
├── model
│   ├── entity
│   │   └── feature
│   │       ├── children.dart
│   │       ├── children.freezed.dart
│   │       └── user.dart
│   ├── logic
│   ├── repository
│   │   └── feature
│   │       └── account
│   │           ├── account_children.repository.dart
│   │           └── account_children.repository.g.dart
│   └── service
│       ├── feature
│       │   └── children
│       │       ├── children_dto.dart
│       │       ├── children_dto.freezed.dart
│       │       ├── children_dto.g.dart
│       │       ├── children_service.dart
│       │       └── children_service.g.dart
│       └── util
│           └── shared_preferences
│               └── shared_preferences_helper.dart
├── ui
│   ├── page
│   │   └── account
│   │       ├── account_child_detail_page
│   │       │   ├── account_child_detail_page_handler.dart
│   │       │   ├── account_child_detail_page_handler.g.dart
│   │       │   ├── account_child_detail_page_view_model.dart
│   │       │   ├── account_child_detail_page_view_model.freezed.dart
│   │       │   ├── account_child_detail_page_view_model.g.dart
│   │       │   └── account_child_detail_page.dart
│   │       ├── account_child_edit_page
│   │       │   ├── account_child_edit_page_handler.dart
│   │       │   ├── account_child_edit_page_handler.g.dart
│   │       │   ├── account_child_edit_page_view_model.dart
│   │       │   ├── account_child_edit_page_view_model.freezed.dart
│   │       │   ├── account_child_edit_page_view_model.g.dart
│   │       │   └── account_child_edit_page.dart
│   │       ├── account_child_register_page
│   │       │   ├── account_child_register_page_handler.dart
│   │       │   ├── account_child_register_page_handler.g.dart
│   │       │   └── account_child_register_page.dart
│   │       ├── account_page
│   │       │   ├── account_page_view_model.dart
│   │       │   ├── account_page_view_model.freezed.dart
│   │       │   ├── account_page_view_model.g.dart
│   │       │   └── account_page.dart
│   │       └── account_child_form.dart
│   ├── routing
│   │   ├── router_path.dart
│   │   └── router.dart
│   └── shared
│       ├── functional
│       └── functionless
│           ├── common_button.dart
│           ├── common_date_picker.dart
│           ├── common_select_box.dart
│           └── common_text_field.dart
├── util
└── main.dart
```

## external

- Flutter アプリにとっての外側の機能の呼び出しを担当する層
  - モデルにとっての外界の例：HttpClient, Firebase analytics の SDK などのモデルが利用する外界の機能
  - UI やモバイルアプリとしての振る舞いにとっての外界の例： DeepLink 関係の SDK など
- Flutter エントリーポイントでモバイルアプリの世界に入る入り口で使う場合などもある

## model

### service

- external 層との通信を行う層
- DTO を定義して返す
- この段階ではクライアントアプリの業務知識と必ずしも一致するわけではない

### entity

- クライアントアプリとして取り扱う業務知識のデータ（Entity）を定義する
- 業務知識の関心事ごとに分ける
- freezed で定義する

### repository

- service 層との通信を行い業務知識を作成する
- 例：サーバーサイドで定義されている 3 つの API エンドポイントをまとめて呼び 1 つの Entity を生み出す
- DTO から Entity の変換を行う

### logic

- 業務知識・業務ロジックとして実現したいロジックを実装する（画面関係ない）

  - Notifier で Entity を取得、キャッシュ、操作する（グローバルな状態管理）
  - useCase：業務上必要な計算（例：BMI の計算、配列処理、状態管理を伴わないデータの読み書きメソッドの呼び出し）

- Notifier も viewModel より少なくなる
- このアプリは handler から 直接 Repository を読んで良いので UseCase はそこまで多くならない

メモ：useCase の命名はやることの名前 「やる事 UseCase」
メソッドは invoke で確定
クラスのインスタンスを provider で提供する必要など

Notifier：Auth などグローバルな state 管理

↑ ViewModel が使う
↑ ハンドラーが使う
スクロール、描画後 5 秒後

## ui

#### viewModel

- 業務知識・業務ロジックとして実現したいロジックを実装する（特定の画面に関係する内容）

  - Notifier で Entity を取得、キャッシュ、操作する（グローバルな状態管理）

- ライフサイクルが Page と一致する
- Page のローディング・エラー・データ取得完了 (AsyncValue) を管理
- page に必要な state を一つのクラスとして freezed で定義
- この state を管理する Notifier を定義する

メモ：
BuildContext NG
UI のことは知らない（FLutter は出てこない）

#### handler

- 特定の画面で行われるすべての内容を実装する
- viewModel の処理呼び出し、エラーハンドリングなどの UI 操作を行う

メモ：
BuildContext OK
UI のことを知っている

### page

- 各画面の UI を実装する
- ハンドル操作は pageHandler を呼び出す

### shared

#### functional

- 複数の画面で利用されるグローバルな状態（≒ 通信が必要）と紐づく（特定のページとの紐づきが少ない）ウィジェット
  - 例：ショッピングアプリのカートウィジェット（購入画面、商品一覧、アカウント詳細度複数の画面で使用される）

メモ：
WidgetRef OK

#### functionless

- 複数の画面で利用されるウィジェット
  - Typography や AppColor など Figma のスタイルガイド
  - ElevatedButton や AlertDialog など Figma の基礎コンポーネント

メモ：
WidgetRef NG
