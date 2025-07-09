// lib/3-tasks/presentation/pages/task_detail_wrapper_page.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:myapp/3-tasks/application/evidences/evidence_bloc.dart';
import 'package:myapp/3-tasks/application/incidents/incident_bloc.dart';
import 'package:myapp/3-tasks/domain/task.dart';
import 'package:myapp/3-tasks/presentation/pages/task_detail_page.dart';

@RoutePage()
class TaskDetailWrapperPage extends StatelessWidget {
  final Task task;

  const TaskDetailWrapperPage({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EvidenceBloc>(
          create: (context) => GetIt.I<EvidenceBloc>(),
        ),
        BlocProvider<IncidentBloc>(
          create: (context) => GetIt.I<IncidentBloc>(),
        ),
      ],
      child: TaskDetailPage(task: task), 
    );
  }
}
