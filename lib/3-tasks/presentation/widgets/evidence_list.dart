import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3-tasks/application/evidences/evidence_bloc.dart';
import 'package:myapp/3-tasks/application/evidences/evidence_state.dart';
import 'package:myapp/3-tasks/presentation/widgets/evidence_card.dart';
import 'package:myapp/3-tasks/presentation/widgets/add_evidence_dialog.dart';

class EvidenceList extends StatelessWidget {
  final int taskId;

  const EvidenceList({super.key, required this.taskId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EvidenceBloc, EvidenceState>(
      builder: (context, state) {
        return Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Builder(
              builder: (innerContext) => ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('Agregar Evidencia'),
                onPressed: () {
                  showDialog(
                    context: innerContext,
                    builder: (dialogContext) => BlocProvider.value(
                      value: context.read<EvidenceBloc>(),  
                      child: AddEvidenceDialog(taskId: taskId),
                    ),
                  );
                },
              ),
            ),
          ),
            Expanded(
              child: state.maybeWhen(
                loadSuccess: (evidences) => evidences.isEmpty
                    ? const Center(child: Text('No hay evidencias registradas'))
                    : ListView.builder(
                        itemCount: evidences.length,
                        itemBuilder: (ctx, i) => EvidenceCard(evidence: evidences[i]),
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