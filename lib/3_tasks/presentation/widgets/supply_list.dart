import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/3_tasks/application/supplies/supply_bloc.dart';
import 'package:myapp/3_tasks/application/supplies/supply_event.dart';
import 'package:myapp/3_tasks/application/supplies/supply_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
            loadSuccess: (supplies) => ListView.builder(
              itemCount: supplies.length,
              itemBuilder: (ctx, i) {
                final supply = supplies[i];
                return Card(
                  child: ListTile(
                    leading: CachedNetworkImage(
                      imageUrl: supply.image,
                      width: 50,
                      height: 50,
                      placeholder: (ctx, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (ctx, url, error) => const Icon(Icons.error),
                    ),
                    title: Text(supply.name),
                    subtitle: Text(
                      '${supply.description}\n${supply.quantity} ${supply.unit}',
                    ),
                  ),
                );
              },
            ),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
