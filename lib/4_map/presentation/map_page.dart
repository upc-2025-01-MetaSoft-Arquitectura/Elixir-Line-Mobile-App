import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/4_map/application/plot_bloc.dart';
import 'package:myapp/4_map/application/plot_event.dart';
import 'package:myapp/4_map/application/plot_state.dart';
import 'package:myapp/4_map/infrastructure/plot_repository.dart';
import 'package:myapp/injection.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';

@RoutePage()
class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Future<int?>? _winegrowerIdFuture;

  @override
  void initState() {
    super.initState();
    _loadWinegrowerId();
  }

  void _loadWinegrowerId() {
    _winegrowerIdFuture = AuthStorage().getWinegrowerId();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int?>(
      future: _winegrowerIdFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasData && snapshot.data != null) {
          return BlocProvider(
            create: (_) =>
                PlotBloc(getIt<PlotRepository>())..add(const PlotFetched()),
            child: Scaffold(
              appBar: AppBar(title: const Text('Mapa de Parcelas')),
              body: RefreshIndicator(
                onRefresh: () async {
                  setState(() {
                    _loadWinegrowerId();
                  });
                },
                child: BlocBuilder<PlotBloc, PlotState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () =>
                          const Center(child: CircularProgressIndicator()),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      loadSuccess: (plots) {
                        return GoogleMap(
                          initialCameraPosition: const CameraPosition(
                            target: LatLng(
                              -14.081889944960787,
                              -75.70879652793104,
                            ),
                            zoom: 10,
                          ),
                          markers: plots.map((plot) {
                            return Marker(
                              markerId: MarkerId(plot.id.toString()),
                              position: LatLng(
                                plot.path[0].lat,
                                plot.path[0].lng,
                              ),
                              infoWindow: InfoWindow(title: plot.label),
                            );
                          }).toSet(),
                          polylines: plots.map((plot) {
                            return Polyline(
                              polylineId: PolylineId(plot.id.toString()),
                              points: plot.path
                                  .map((p) => LatLng(p.lat, p.lng))
                                  .toList(),
                              color: Colors.blue,
                            );
                          }).toSet(),
                        );
                      },
                      failure: (failure) =>
                          Center(child: Text('Error: ${failure.toString()}')),
                    );
                  },
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(title: const Text('Mapa de Parcelas')),
            body: RefreshIndicator(
              onRefresh: () async {
                setState(() {
                  _loadWinegrowerId();
                });
              },
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 200),
                children: const [
                  Center(
                    child: Text(
                      'No se pudo cargar el mapa, aún no tienes datos.\nDesliza para reintentar.',
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
