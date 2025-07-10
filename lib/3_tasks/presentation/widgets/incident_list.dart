import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3_tasks/application/incidents/incident_bloc.dart';
import 'package:myapp/3_tasks/application/incidents/incident_event.dart';
import 'package:myapp/3_tasks/application/incidents/incident_state.dart';
import 'package:myapp/3_tasks/presentation/widgets/add_incident_dialog.dart';
import 'package:myapp/3_tasks/presentation/widgets/incident_card.dart';

class IncidentList extends StatelessWidget {
  final int taskId;
  final String taskType;

  const IncidentList({super.key, required this.taskId, required this.taskType});

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
                    builder:
                        (dialogContext) => BlocProvider.value(
                          value: context.read<IncidentBloc>(),
                          child: AddIncidentDialog(taskId: taskId),
                        ),
                  );
                },
              ),
            ),
            Expanded(
              child: state.maybeWhen(
                loadSuccess:
                    (incidents) => RefreshIndicator(
                      onRefresh: () async {
                        context.read<IncidentBloc>().add(
                          IncidentsFetched(taskId: taskId, taskType: taskType),
                        );
                      },
                      child:
                          incidents.isEmpty
                              ? ListView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                children: const [
                                  SizedBox(height: 300),
                                  Center(
                                    child: Text(
                                      'No hay incidencias registradas',
                                    ),
                                  ),
                                ],
                              )
                              : ListView.builder(
                                itemCount: incidents.length,
                                itemBuilder:
                                    (ctx, i) =>
                                        IncidentCard(incident: incidents[i]),
                              ),
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
