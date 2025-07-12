import 'dart:convert';
import 'package:dartz/dartz.dart';
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

      if (winegrowerId == null || token == null) {
        return left(const PlotFailure.unableToFetch());
      }

      final response = await http.get(
        Uri.parse('${ApiConstants.baseUrl}/plot/$winegrowerId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final plots = data.map((json) => Plot.fromJson(json)).toList();
        return right(plots);
      } else {
        return left(const PlotFailure.unableToFetch());
      }
    } catch (e) {
      return left(const PlotFailure.unexpected());
    }
  }
}
