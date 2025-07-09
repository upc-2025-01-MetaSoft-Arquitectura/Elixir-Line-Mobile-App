import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/3-tasks/domain/incidents/incident.dart';

class IncidentCard extends StatelessWidget {
  final Incident incident;

  const IncidentCard({super.key, required this.incident});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(incident.description),
          ),
          CachedNetworkImage(
            imageUrl: incident.imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: (_, __) =>
                const Center(child: CircularProgressIndicator()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Fecha: ${incident.createdAt.substring(0, 10)}'),
          ),
        ],
      ),
    );
  }
}
