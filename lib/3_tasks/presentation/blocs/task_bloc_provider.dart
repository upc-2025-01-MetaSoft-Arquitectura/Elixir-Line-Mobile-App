import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3_tasks/application/task_bloc.dart';
import 'package:myapp/injection.dart';
import 'package:flutter/material.dart';

class TaskBlocProvider extends StatelessWidget {
  final Widget child;
  const TaskBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => getIt<TaskBloc>(), child: child);
  }
}
