import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myapp/3_tasks/presentation/pages/tasks_route_wrapper.dart';

@RoutePage()
class TasksRoute extends StatelessWidget {
  const TasksRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const TasksRouteWrapper();
  }
}
