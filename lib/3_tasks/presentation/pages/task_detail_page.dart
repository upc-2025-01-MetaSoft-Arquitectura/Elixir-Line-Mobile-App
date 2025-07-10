import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3_tasks/application/evidences/evidence_bloc.dart';
import 'package:myapp/3_tasks/application/evidences/evidence_event.dart';
import 'package:myapp/3_tasks/application/incidents/incident_bloc.dart';
import 'package:myapp/3_tasks/application/incidents/incident_event.dart';
import 'package:myapp/3_tasks/domain/task.dart';
import 'package:myapp/3_tasks/presentation/widgets/evidence_list.dart';
import 'package:myapp/3_tasks/presentation/widgets/incident_list.dart';
import 'package:myapp/3_tasks/presentation/widgets/supply_list.dart';

class TaskDetailPage extends StatefulWidget {
  final Task task;

  const TaskDetailPage({super.key, required this.task});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  late EvidenceBloc _evidenceBloc;
  late IncidentBloc _incidentBloc;

  @override
  void initState() {
    super.initState();
    _evidenceBloc = context.read<EvidenceBloc>();
    _incidentBloc = context.read<IncidentBloc>();
    _evidenceBloc.add(EvidencesFetched(widget.task.id));
    _incidentBloc.add(
      IncidentsFetched(taskId: widget.task.id, taskType: widget.task.type),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.task.title),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Evidencias'),
              Tab(text: 'Incidencias'),
              Tab(text: 'Insumos'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            EvidenceList(taskId: widget.task.id),
            IncidentList(taskId: widget.task.id, taskType: widget.task.type),
            SupplyList(supplyIds: widget.task.suppliesIds),
          ],
        ),
      ),
    );
  }
}
