import 'package:flutter/material.dart';
import 'package:myapp/3-tasks/domain/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;

  const TaskCard({super.key, required this.task});

  String get statusLabel {
    return switch (task.status) {
      'NOT_STARTED' => 'No Iniciado',
      'IN_PROCESS' => 'En Curso',
      'FINISHED' => 'Finalizado',
      _ => 'Desconocido',
    };
  }

  Color get statusColor {
    return switch (task.status) {
      'NOT_STARTED' => Colors.grey,
      'IN_PROCESS' => const Color.fromARGB(255, 60, 133, 216),
      'FINISHED' => Colors.green,
      _ => Colors.blueGrey,
    };
  }

  String get taskTypeLabel {
    return switch (task.type) {
      'TASK_INDUSTRY' => 'Tarea Industrial',
      'TASK_FIELD' => 'Tarea de Campo',
      _ => 'Tipo Desconocido',
    };
  }

  Color get taskTypeColor {
    return switch (task.type) {
      'TASK_INDUSTRY' => Colors.orange,
      'TASK_FIELD' => Colors.green,
      _ => Colors.blueGrey,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(task.title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(task.description, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text(statusLabel),
                  backgroundColor: statusColor.withAlpha((255 * 0.2).round()),
                  labelStyle: TextStyle(color: statusColor),
                ),
                Text('${task.progressPercentage}%', style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: task.progressPercentage / 100,
              color: statusColor,
              backgroundColor: Colors.grey.shade300,
            ),
            const SizedBox(height: 8),
            Text('Inicio: ${task.startDate}'),
            Text('Fin: ${task.endDate}'),
            const SizedBox(height: 8), 
            Align(
              alignment: Alignment.bottomRight,
              child: Chip(
                label: Text(taskTypeLabel),
                backgroundColor: taskTypeColor.withAlpha((255 * 0.2).round()),
                labelStyle: TextStyle(color: taskTypeColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
