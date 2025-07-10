import 'package:flutter/material.dart';
import 'package:myapp/3_tasks/presentation/blocs/task_bloc_provider.dart';
import 'package:myapp/3_tasks/presentation/pages/tasks_page.dart';

class TasksRouteWrapper extends StatelessWidget {
  const TasksRouteWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return TaskBlocProvider(child: const TaskPage());
  }
}
