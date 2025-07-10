import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3_tasks/application/evidences/evidence_bloc.dart';
import 'package:myapp/3_tasks/application/evidences/evidence_event.dart';
import 'package:myapp/3_tasks/application/evidences/evidence_state.dart';
import 'package:myapp/3_tasks/presentation/widgets/evidence_card.dart';
import 'package:myapp/3_tasks/presentation/widgets/add_evidence_dialog.dart';

class EvidenceList extends StatefulWidget {
  final int taskId;

  const EvidenceList({super.key, required this.taskId});

  @override
  State<EvidenceList> createState() => _EvidenceListState();
}

class _EvidenceListState extends State<EvidenceList> {
  @override
  void initState() {
    super.initState();
    context.read<EvidenceBloc>().add(EvidencesFetched(widget.taskId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EvidenceBloc, EvidenceState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('Agregar Evidencia'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (dialogContext) => BlocProvider.value(
                          value: context.read<EvidenceBloc>(),
                          child: AddEvidenceDialog(taskId: widget.taskId),
                        ),
                  );
                },
              ),
            ),
            Expanded(
              child: state.maybeWhen(
                loadSuccess:
                    (evidences) => RefreshIndicator(
                      onRefresh: () async {
                        context.read<EvidenceBloc>().add(
                          EvidencesFetched(widget.taskId),
                        );
                      },
                      child:
                          evidences.isEmpty
                              ? ListView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                children: const [
                                  SizedBox(height: 300),
                                  Center(
                                    child: Text(
                                      'No hay evidencias registradas',
                                    ),
                                  ),
                                ],
                              )
                              : ListView.builder(
                                itemCount: evidences.length,
                                itemBuilder:
                                    (ctx, i) =>
                                        EvidenceCard(evidence: evidences[i]),
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
