import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:myapp/3_tasks/domain/supplies/i_supply_repository.dart';
import 'package:myapp/3_tasks/domain/supplies/supply.dart';
import 'package:myapp/3_tasks/domain/task_failure.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/shared/domain/api_constants.dart';

@LazySingleton(as: ISupplyRepository)
class SupplyRepository implements ISupplyRepository {
  final AuthStorage _authStorage;

  SupplyRepository(this._authStorage);

  @override
  Future<Either<TaskFailure, Supply>> getSupplyById(int id) async {
    final token = await _authStorage.getToken();
    try {
      final response = await http.get(
        Uri.parse('${ApiConstants.baseUrl}/inputs/$id'),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        final jsonBody = json.decode(response.body);
        return right(Supply.fromJson(jsonBody));
      } else {
        return left(const TaskFailure.unableToFetch());
      }
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }
}
