import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_offline_test/model/todo.dart';

part 'todo_repository.g.dart';

class TodoRepository {
  // 仮のstream
  Stream<List<Todo>> watchTodos() {
    // ここでは、実際のデータベースやAPIからのデータ取得を模倣するために、
    // サンプルのTodoリストを返すStreamを作成します。
    return Stream.value([
      Todo(id: '1', title: 'Learn Riverpod', isCompleted: false),
      Todo(id: '2', title: 'Build a Flutter app', isCompleted: true),
      Todo(id: '3', title: 'Write tests', isCompleted: false),
    ]);
  }
}

@riverpod
TodoRepository todoRepository(Ref ref) => TodoRepository();

@riverpod
Stream<List<Todo>> watchTodos(Ref ref) {
  return ref.watch(todoRepositoryProvider).watchTodos();
}
