import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_list/providers/task/task_notifier.dart';
import 'package:to_do_list/providers/task/task_state.dart';

import '../../data/repositories/task_repository_provider.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
