import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/model/repository/feature/todo/todo.repository.dart';
import 'package:flutter_architecture/ui/page/todo/todo_page/todo_page_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import '../../../../util/create_container.dart';
import '../../../../util/mocks.mocks.dart';

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
    test("build時にTodo一覧の取得に失敗した場合はエラーとなること", () async {
      // Arrange：MockRepositoryのfetchTodos()が例外をスローするように設定する。
      when(
        mockTodoRepository.fetchTodos(),
      ).thenThrow(FetchTodosGeneralException());

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

      // Assert： viewModelのbuild()で例外がスローされる。
      await expectLater(
        container.read(todoPageViewModelProvider.future),
        throwsA(isA<FetchTodosGeneralException>()),
      );

      // Assert： viewModelのbuild()で状態がAsyncErrorとなる。
      expect(container.read(todoPageViewModelProvider), isA<AsyncError>());
    });
  });
}
