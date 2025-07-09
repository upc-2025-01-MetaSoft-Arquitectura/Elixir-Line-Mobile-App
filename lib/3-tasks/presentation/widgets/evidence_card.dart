import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/3-tasks/domain/evidences/evidence.dart';

class EvidenceCard extends StatelessWidget {
  final Evidence evidence;

  const EvidenceCard({super.key, required this.evidence});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(evidence.description),
          ),
          CachedNetworkImage(
            imageUrl: evidence.imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: (_, __) => const Center(child: CircularProgressIndicator()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${evidence.progressPercentage}%'),
                Text('${evidence.createdAt.day}/${evidence.createdAt.month}/${evidence.createdAt.year}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}