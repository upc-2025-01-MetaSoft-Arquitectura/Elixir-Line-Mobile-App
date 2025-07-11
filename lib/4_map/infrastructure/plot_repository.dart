import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/4_map/domain/plot.dart';
import 'package:myapp/4_map/domain/plot_failure.dart';
import 'package:myapp/shared/domain/api_constants.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';

@LazySingleton()
class PlotRepository {
  Future<Either<PlotFailure, List<Plot>>> getPlots() async {
    try {
      final winegrowerId = await AuthStorage().getWinegrowerId();
      final token = await AuthStorage().getToken();
      debugPrint('Obteniendo plots para winegrowerId: $winegrowerId');
      debugPrint('Token usado: $token');

      if (winegrowerId == null || token == null) {
        debugPrint('WinegrowerId o Token es NULL');
        return left(const PlotFailure.unableToFetch());
      }

      final response = await http.get(
        Uri.parse('${ApiConstants.baseUrl}/plot/$winegrowerId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      debugPrint('Respuesta del API: ${response.statusCode}');

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        debugPrint('Plots recibidos: ${data.length}');
        final plots = data.map((json) => Plot.fromJson(json)).toList();
        return right(plots);
      } else {
        debugPrint('Error al obtener plots: ${response.body}');
        return left(const PlotFailure.unableToFetch());
      }
    } catch (e) {
      debugPrint('Excepción al obtener plots: $e');
      return left(const PlotFailure.unexpected());
    }
  }
}
