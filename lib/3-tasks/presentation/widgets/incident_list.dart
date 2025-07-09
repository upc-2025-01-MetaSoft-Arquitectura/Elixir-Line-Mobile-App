import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3-tasks/application/incidents/incident_bloc.dart';
import 'package:myapp/3-tasks/application/incidents/incident_state.dart';
import 'package:myapp/3-tasks/presentation/widgets/add_incident_dialog.dart';
import 'package:myapp/3-tasks/presentation/widgets/incident_card.dart';

class IncidentList extends StatelessWidget {
  final int taskId;

  const IncidentList({super.key, required this.taskId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncidentBloc, IncidentState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add_alert),
                label: const Text('Agregar Incidencia'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (dialogContext) => BlocProvider.value(
                      value: context.read<IncidentBloc>(),
                      child: AddIncidentDialog(taskId: taskId),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: state.maybeWhen(
                loadSuccess: (incidents) => incidents.isEmpty
                    ? const Center(child: Text('No hay incidencias registradas'))
                    : ListView.builder(
                        itemCount: incidents.length,
                        itemBuilder: (ctx, i) =>
                            IncidentCard(incident: incidents[i]),
                      ),
                orElse: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        );
      },
    );
  }
}
