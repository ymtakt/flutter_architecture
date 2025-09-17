import 'package:flutter_architecture/model/entity/feature/todo.dart';
import 'package:flutter_architecture/model/repository/feature/todo/todo.repository.dart';
import 'package:flutter_architecture/ui/page/todo/todo_detail_page/todo_detail_page_view_model.dart';
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

  group("TodoDetailPageViewModelのテスト", () {
    // 前提：TodoRepositoryのfetchTodoById()が正常にTodoを返す。
    // 期待値：ViewModelのbuild()でTodoDetailPageStateに正しくTodoがセットされる。
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
        container.read(todoDetailPageViewModelProvider('1')),
        isA<AsyncValue<TodoDetailPageState>>(),
      );

      // Act： TodoDetailPageViewModelを読み込み、buildメソッドの完了を待つ。
      final state = await container.read(
        todoDetailPageViewModelProvider('1').future,
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
        container.read(todoDetailPageViewModelProvider('1')),
        isA<AsyncValue<TodoDetailPageState>>(),
      );

      // Assert： viewModelのbuild()で例外がスローされる。
      await expectLater(
        container.read(todoDetailPageViewModelProvider('1').future),
        throwsA(isA<FetchTodoNotFoundException>()),
      );

      // Assert： viewModelのbuild()で状態がAsyncErrorとなる。
      expect(
        container.read(todoDetailPageViewModelProvider('1')),
        isA<AsyncError>(),
      );
    });

    // 前提：TodoRepositoryのdeleteTodo()が正常に完了する。
    // 期待値：deleteTodo()メソッドが正常に実行される。
    test("deleteTodo時にTodoが正常に削除されること", () async {
      // Arrange：テスト用のモックデータを作成。
      final mockTodo = Todo(
        id: '1',
        title: 'Test Todo',
        description: 'Test Description',
        status: TodoStatus.notStarted,
      );

      // MockRepositoryの設定。
      when(
        mockTodoRepository.fetchTodoById('1'),
      ).thenAnswer((_) async => mockTodo);
      when(mockTodoRepository.deleteTodo(id: '1')).thenAnswer((_) async {});

      // テスト用のProviderContainerを作成する。
      final container = createContainer(
        overrides: [
          todoRepositoryProvider.overrideWithValue(mockTodoRepository),
        ],
      );

      // Act： TodoDetailPageViewModelを読み込み、buildメソッドの完了を待つ。
      await container.read(todoDetailPageViewModelProvider('1').future);

      // Act：deleteTodoを呼び出す。
      await container
          .read(todoDetailPageViewModelProvider('1').notifier)
          .deleteTodo();

      // Assert：deleteTodoが呼ばれたことを確認。
      verify(mockTodoRepository.deleteTodo(id: '1')).called(1);
    });

    // 前提：TodoRepositoryのdeleteTodo()が例外をスローする。
    // 期待値：deleteTodo()メソッドで例外がスローされる。
    test("deleteTodo時にTodo削除に失敗した場合は例外がスローされること", () async {
      // Arrange：テスト用のモックデータを作成。
      final mockTodo = Todo(
        id: '1',
        title: 'Test Todo',
        description: 'Test Description',
        status: TodoStatus.notStarted,
      );

      // MockRepositoryの設定。
      when(
        mockTodoRepository.fetchTodoById('1'),
      ).thenAnswer((_) async => mockTodo);
      when(
        mockTodoRepository.deleteTodo(id: '1'),
      ).thenThrow(DeleteTodoGeneralException());

      // テスト用のProviderContainerを作成する。
      final container = createContainer(
        overrides: [
          todoRepositoryProvider.overrideWithValue(mockTodoRepository),
        ],
      );

      // Act： TodoDetailPageViewModelを読み込み、buildメソッドの完了を待つ。
      await container.read(todoDetailPageViewModelProvider('1').future);

      // Assert：deleteTodoで例外がスローされる。
      await expectLater(
        container
            .read(todoDetailPageViewModelProvider('1').notifier)
            .deleteTodo(),
        throwsA(isA<DeleteTodoGeneralException>()),
      );
    });
  });
}
