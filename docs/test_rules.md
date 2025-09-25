# テスト方針

## パッケージ

- flutter_test
- mockito
- build runner

## 対象ファイル

- viewModel,logic
- util

### viewModel,logic

- テスト対象：

  - viewModel 層：pageViewModel や sectionViewModel
  - logic 層：xxxNotifier：や xxxUseCase

- 前提： Repository 層が想定通りの値を返す（正常値・異常値）
- 期待値：

  - 状態管理が正しく動作する
  - エラー時は適切な例外処理が行われる

- モック対象：Repository 層の Provider
- カバレッジ：
  - Notifier が提供するメソッドの数、各メソッドの条件分岐数に応じて網羅する
  - 各メソッドで使用する Repository の例外も含める

```dart
void main() {
  late MockTodoRepository mockTodoRepository;

  setUp(() {
    // MockTodoRepositoryをインスタンス化する。
    mockTodoRepository = MockTodoRepository();
  });

  group("TodoPageViewModelのテスト", () {
    // 前提：TodoRepositoryのfetchTodos()が正常にTodo一覧を返す。
    // 期待値：ViewModelのbuild()でTodoPageStateに正しくTodo一覧がセットされる。
    test("build時にTodo一覧が正常に読み込まれること", () async {
      // Arrange：テスト用のモックデータを作成。
      final mockTodos = [
        Todo(
          id: '1',
          title: 'Test Todo',
          description: 'Test Description',
          status: TodoStatus.notStarted,
        ),
      ];

      // MockRepositoryのfetchTodos()が呼ばれたらmockTodosを返すように設定する。
      when(mockTodoRepository.fetchTodos()).thenAnswer((_) async => mockTodos);

      // テスト用のProviderContainerを作成する。
      final container = createContainer(
        overrides: [
          todoRepositoryProvider.overrideWithValue(mockTodoRepository),
        ],
      );

      // Assert：viewModelをbuildすると初めはローディング中である。
      expect(
        container.read(todoPageViewModelProvider),
        isA<AsyncValue<TodoPageState>>(),
      );

      // Act： TodoPageViewModelを読み込み、buildメソッドの完了を待つ。
      final state = await container.read(todoPageViewModelProvider.future);

      // Assert： ViewModelの状態が期待通りになっているかチェック。
      expect(state.todos, mockTodos);
    });

    // 前提：TodoRepositoryのfetchTodos()が例外をスローする。
    // 期待値：ViewModelのbuild()で状態がAsyncErrorとなる。

  });
}
```

### util 層

- テスト対象:

  - 純粋な Dart のトップレベル関数

- 前提：具体的な引数（入力値）
- 期待値： 期待通りの戻り値
- モック対象：なし
- カバレッジ：すべての分岐パターン

```dart
void main() {
    // 前提: 正の整数を渡す
    // 期待値: 正しい計算結果が返る
    test("年齢を計算する", () {
    final result = calculateAge(DateTime(2020, 1, 1));
    expect(result, 4);
    });
}
```
