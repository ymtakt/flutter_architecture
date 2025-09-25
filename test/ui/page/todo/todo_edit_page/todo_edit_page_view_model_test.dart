import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/model/repository/feature/todo/todo.repository.dart';
import 'package:flutter_architecture/ui/page/todo/todo_edit_page/todo_edit_page_view_model.dart';
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

  group("TodoEditPageViewModelのテスト", () {
    // 前提：TodoRepositoryのfetchTodoById()が正常にTodoを返す。
    // 期待値：ViewModelのbuild()でTodoEditPageStateに正しくTodoがセットされる。
    test("build時にTodo詳細が正常に読み込まれること", () async {
      // Arrange：テスト用のモックデータを作成。
      final mockTodo = Todo(
        id: '1',
        title: 'Test Todo',
        description: 'Test Description',
        status: TodoStatus.notStarted,
      );

      // MockRepositoryのfetchTodoById()が呼ばれたらmockTodoを返すように設定する。
      when(
        mockTodoRepository.fetchTodoById('1'),
      ).thenAnswer((_) async => mockTodo);

      // テスト用のProviderContainerを作成する。
      final container = createContainer(
        overrides: [
          todoRepositoryProvider.overrideWithValue(mockTodoRepository),
        ],
      );

      // Assert：viewModelをbuildすると初めはローディング中である。
      expect(
        container.read(todoEditPageViewModelProvider('1')),
        isA<AsyncValue<TodoEditPageState>>(),
      );

      // Act： TodoEditPageViewModelを読み込み、buildメソッドの完了を待つ。
      final state = await container.read(
        todoEditPageViewModelProvider('1').future,
      );

      // Assert： ViewModelの状態が期待通りになっているかチェック。
      expect(state.todo, mockTodo);
    });

    // 前提：TodoRepositoryのfetchTodoById()が例外をスローする。
    // 期待値：ViewModelのbuild()で状態がAsyncErrorとなる。
    test("build時にTodo詳細の取得に失敗した場合はエラーとなること", () async {
      // Arrange：MockRepositoryのfetchTodoById()が例外をスローするように設定する。
      when(
        mockTodoRepository.fetchTodoById('1'),
      ).thenThrow(FetchTodoNotFoundException());

      // テスト用のProviderContainerを作成する。
      final container = createContainer(
        overrides: [
          todoRepositoryProvider.overrideWithValue(mockTodoRepository),
        ],
      );

      // Assert：viewModelをbuildすると初めはローディング中である。
      expect(
        container.read(todoEditPageViewModelProvider('1')),
        isA<AsyncValue<TodoEditPageState>>(),
      );

      // Assert： viewModelのbuild()で例外がスローされる。
      await expectLater(
        container.read(todoEditPageViewModelProvider('1').future),
        throwsA(isA<FetchTodoNotFoundException>()),
      );

      // Assert： viewModelのbuild()で状態がAsyncErrorとなる。
      expect(
        container.read(todoEditPageViewModelProvider('1')),
        isA<AsyncError>(),
      );
    });

    // 前提：TodoRepositoryのupdateTodo()が正常に完了する。
    // 期待値：updateTodo()メソッドが正常に実行される。
    test("updateTodo時にTodoが正常に更新されること", () async {
      // Arrange：テスト用のモックデータを作成。
      final mockTodo = Todo(
        id: '1',
        title: 'Test Todo',
        description: 'Test Description',
        status: TodoStatus.notStarted,
      );

      final updatedTodo = Todo(
        id: '1',
        title: 'Updated Todo',
        description: 'Updated Description',
        status: TodoStatus.inProgress,
      );

      // MockRepositoryの設定。
      when(
        mockTodoRepository.fetchTodoById('1'),
      ).thenAnswer((_) async => mockTodo);
      when(
        mockTodoRepository.updateTodo(
          id: '1',
          title: 'Updated Todo',
          description: 'Updated Description',
          status: '進行中',
        ),
      ).thenAnswer((_) async {});

      // テスト用のProviderContainerを作成する。
      final container = createContainer(
        overrides: [
          todoRepositoryProvider.overrideWithValue(mockTodoRepository),
        ],
      );

      // Act： TodoEditPageViewModelを読み込み、buildメソッドの完了を待つ。
      await container.read(todoEditPageViewModelProvider('1').future);

      // Act：updateTodoを呼び出す。
      await container
          .read(todoEditPageViewModelProvider('1').notifier)
          .updateTodo(
            title: updatedTodo.title,
            description: updatedTodo.description,
            status: updatedTodo.status.name,
          );

      // Assert：updateTodoが呼ばれたことを確認。
      verify(
        mockTodoRepository.updateTodo(
          id: '1',
          title: 'Updated Todo',
          description: 'Updated Description',
          status: '進行中',
        ),
      ).called(1);
    });

    // 前提：TodoRepositoryのupdateTodo()が例外をスローする。
    // 期待値：updateTodo()メソッドで例外がスローされる。
    test("updateTodo時にTodo更新に失敗した場合は例外がスローされること", () async {
      // Arrange：テスト用のモックデータを作成。
      final mockTodo = Todo(
        id: '1',
        title: 'Test Todo',
        description: 'Test Description',
        status: TodoStatus.notStarted,
      );

      final updatedTodo = Todo(
        id: '1',
        title: 'Updated Todo',
        description: 'Updated Description',
        status: TodoStatus.inProgress,
      );

      // MockRepositoryの設定。
      when(
        mockTodoRepository.fetchTodoById('1'),
      ).thenAnswer((_) async => mockTodo);
      when(
        mockTodoRepository.updateTodo(
          id: '1',
          title: 'Updated Todo',
          description: 'Updated Description',
          status: '進行中',
        ),
      ).thenThrow(UpdateTodoGeneralException());

      // テスト用のProviderContainerを作成する。
      final container = createContainer(
        overrides: [
          todoRepositoryProvider.overrideWithValue(mockTodoRepository),
        ],
      );

      // Act： TodoEditPageViewModelを読み込み、buildメソッドの完了を待つ。
      await container.read(todoEditPageViewModelProvider('1').future);

      // Assert：updateTodoで例外がスローされる。
      await expectLater(
        container
            .read(todoEditPageViewModelProvider('1').notifier)
            .updateTodo(
              title: updatedTodo.title,
              description: updatedTodo.description,
              status: updatedTodo.status.name,
            ),
        throwsA(isA<UpdateTodoGeneralException>()),
      );
    });
  });
}
