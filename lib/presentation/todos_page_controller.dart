import 'package:flutter_riverpod/experimental/persist.dart';
import 'package:riverpod_annotation/experimental/json_persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_offline_test/model/todo.dart';
import 'package:riverpod_offline_test/shared_preference_storage.dart';

part 'todos_page_controller.g.dart';

@riverpod
@JsonPersist()
class TodosNotifier extends _$TodosNotifier {
  @override
  FutureOr<List<Todo>> build() async {
    final sharedPrefStorage = ref.watch(sharedPrefsStorageProvider);
    await persist(
      storage: sharedPrefStorage,
      options: const StorageOptions(cacheTime: StorageCacheTime.unsafe_forever),
    );

    // If a state is persisted, we return it. Otherwise we return an empty list.
    return state.value ?? [];
  }

  Future<void> add(Todo todo) async {
    state = AsyncData([...await future, todo]);
  }

  Future<void> toggleCompletion(String id) async {
    final todos = await future;
    final updatedTodos = todos.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(isCompleted: !todo.isCompleted);
      }
      return todo;
    }).toList();
    state = AsyncData(updatedTodos);
  }
}
