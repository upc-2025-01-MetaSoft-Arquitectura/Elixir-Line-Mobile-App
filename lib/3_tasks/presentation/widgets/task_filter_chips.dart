import 'package:flutter/material.dart';

enum TaskFilter { all, pending, inProgress, done }

class TaskFilterChips extends StatelessWidget {
  final TaskFilter selectedFilter;
  final ValueChanged<TaskFilter> onFilterChanged;

  const TaskFilterChips({
    super.key,
    required this.selectedFilter,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children:
          TaskFilter.values.map((filter) {
            final label = switch (filter) {
              TaskFilter.all => 'Todas',
              TaskFilter.pending => 'Pendientes',
              TaskFilter.inProgress => 'En Curso',
              TaskFilter.done => 'Hechas',
            };
            return ChoiceChip(
              label: Text(label),
              selected: selectedFilter == filter,
              onSelected: (_) => onFilterChanged(filter),
            );
          }).toList(),
    );
  }
}
