import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_offline_test/model/todo.dart';
import 'package:riverpod_offline_test/presentation/todos_page_controller.dart';

class TodosPage extends ConsumerWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosAsync = ref.watch(todosNotifierProvider);
    final notifier = ref.watch(todosNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: switch (todosAsync) {
        AsyncData(value: final todos) => Center(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                title: Text(todo.title),
                trailing: Checkbox(
                  value: todo.isCompleted,
                  onChanged: (value) {
                    notifier.toggleCompletion(todo.id);
                  },
                ),
              );
            },
          ),
        ),
        AsyncLoading() => const Center(child: CircularProgressIndicator()),
        AsyncError(error: final error, stackTrace: _) => Center(
          child: Text('Error: $error'),
        ),
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTodo = Todo(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            title: 'New Todo',
            isCompleted: false,
          );
          await notifier.add(newTodo);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
