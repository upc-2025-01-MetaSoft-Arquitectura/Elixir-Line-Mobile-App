import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3_tasks/application/supplies/supply_bloc.dart';
import 'package:myapp/3_tasks/application/supplies/supply_event.dart';
import 'package:myapp/3_tasks/application/supplies/supply_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/3_tasks/domain/supplies/supply.dart';
import 'package:myapp/injection.dart';

class SupplyList extends StatelessWidget {
  final List<int> supplyIds;
  const SupplyList({super.key, required this.supplyIds});

  @override
  Widget build(BuildContext context) {
    if (supplyIds.isEmpty) {
      return const Center(
        child: Text('No hay insumos asignados', style: TextStyle(fontSize: 16)),
      );
    }

    return BlocProvider(
      create: (_) => getIt<SupplyBloc>()..add(SupplyFetched(supplyIds)),
      child: BlocBuilder<SupplyBloc, SupplyState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadSuccess: (supplies) => RefreshIndicator(
              onRefresh: () async {
                context.read<SupplyBloc>().add(SupplyFetched(supplyIds));
              },
              child: ListView.builder(
                itemCount: supplies.length,
                itemBuilder: (ctx, i) {
                  final supply = supplies[i];
                  return _buildSupplyCard(supply);
                },
              ),
            ),
            failure: (failure) =>
                Center(child: Text('Error: ${failure.toString()}')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildSupplyCard(Supply supply) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSupplyImage(supply.image),
            const SizedBox(height: 8),
            Text(
              supply.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(supply.description, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 4),
            Text(
              '${supply.quantity} ${supply.unit}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSupplyImage(String imageUrl) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: double.infinity,
      height: 150,
      fit: BoxFit.contain,
      placeholder: (ctx, url) => const CircularProgressIndicator(),
      errorWidget: (ctx, url, error) {
        return Container(
          width: double.infinity,
          height: 100,
          color: Colors.white,
          child: const Icon(
            Icons.error,
            color: Color.fromARGB(255, 92, 112, 201),
          ),
        );
      },
    );
  }
}
