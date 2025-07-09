import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3-tasks/application/task_bloc.dart';
import 'package:myapp/3-tasks/application/task_event.dart';
import 'package:myapp/3-tasks/application/task_state.dart';
import 'package:myapp/3-tasks/presentation/widgets/task_filter_chips.dart';
import 'package:myapp/3-tasks/presentation/widgets/task_card.dart';

@RoutePage()
class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  TaskFilter selectedFilter = TaskFilter.all;

  @override
  void initState() {
    super.initState();
    context.read<TaskBloc>().add(const TaskEvent.loaded());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis Tareas')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mis Tareas',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Gestiona tu trabajo diario',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            TaskFilterChips(
              selectedFilter: selectedFilter,
              onFilterChanged: (filter) =>
                  setState(() => selectedFilter = filter),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loadSuccess: (tasks) => ListView(
                      children: tasks
                          .where((task) {
                            switch (selectedFilter) {
                              case TaskFilter.all:
                                return true;
                              case TaskFilter.pending:
                                return task.status == 'NOT_STARTED';
                              case TaskFilter.inProgress:
                                return task.status == 'IN_PROCESS';
                              case TaskFilter.done:
                                return task.status == 'FINISHED';
                            }
                          })
                          .map((task) => TaskCard(task: task))
                          .toList(),
                    ),
                    loadFailure: (_) =>
                        const Center(child: Text('Error al cargar tareas')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
