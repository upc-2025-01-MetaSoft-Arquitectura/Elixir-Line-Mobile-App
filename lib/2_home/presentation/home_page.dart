import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/3_tasks/application/task_bloc.dart';
import 'package:myapp/3_tasks/application/task_event.dart';
import 'package:myapp/3_tasks/application/task_state.dart';
import 'package:myapp/shared/domain/api_constants.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/injection.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskBloc>(
      create: (_) => getIt<TaskBloc>()..add(const TaskEvent.loaded()),
      child: const _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatefulWidget {
  const _HomePageContent();

  @override
  State<_HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<_HomePageContent> {
  String? _workerName;
  String? _profilePicture;
  bool _isLoadingProfile = true;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    final authStorage = AuthStorage();
    final userId = await authStorage.getUserId();
    final token = await authStorage.getToken();

    if (userId == null || token == null) {
      setState(() {
        _isLoadingProfile = false;
      });
      return;
    }

    try {
      final response = await http.get(
        Uri.parse('${ApiConstants.baseUrl}/fieldworkers/user/$userId'),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data.isNotEmpty) {
          setState(() {
            _workerName = '${data["name"]}';
            _profilePicture = data["profilePicture"];
            _isLoadingProfile = false;
          });
        } else {
          setState(() {
            _isLoadingProfile = false;
          });
        }
      } else {
        setState(() {
          _isLoadingProfile = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoadingProfile = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (_isLoadingProfile)
              const Center(child: CircularProgressIndicator())
            else if (_workerName != null)
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: _profilePicture != null
                        ? NetworkImage(_profilePicture!)
                        : null,
                    child: _profilePicture == null
                        ? const Icon(Icons.person, size: 30)
                        : null,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Hola! $_workerName',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            else
              const Text('No se pudo cargar el perfil.'),
            const SizedBox(height: 24),
            const Text(
              'Resumen de Tareas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            BlocBuilder<TaskBloc, TaskState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loadSuccess: (tasks) {
                    if (tasks.isEmpty) {
                      return const Text('No hay tareas disponibles.');
                    }
                    final pending = tasks
                        .where((t) => t.status == 'NOT_STARTED')
                        .length;
                    final inProgress = tasks
                        .where((t) => t.status == 'IN_PROCESS')
                        .length;
                    final done = tasks
                        .where((t) => t.status == 'FINISHED')
                        .length;

                    return Column(
                      children: [
                        _buildSummaryCard('Pendientes', pending, Colors.orange),
                        _buildSummaryCard(
                          'En Progreso',
                          inProgress,
                          Colors.blue,
                        ),
                        _buildSummaryCard('Finalizadas', done, Colors.green),
                      ],
                    );
                  },
                  loadFailure: (_) => const Text('Error al cargar tareas'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(String title, int count, Color color) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(backgroundColor: color, child: Text('$count')),
        title: Text(title),
      ),
    );
  }
}
