import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class AuthStorage {
  static const _tokenKey = 'auth_token';
  static const _userIdKey = 'user_id';
  static const _userEmailKey = 'user_email';
  static const _winegrowerIdKey = 'winegrower_id';
  static const _fieldWorkerIdKey = 'fieldworker_id';

  Future<void> saveAuthData({
    required String token,
    required int userId,
    required String email,
    required int winegrowerId,
    required int fieldWorkerId,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
    await prefs.setInt(_userIdKey, userId);
    await prefs.setString(_userEmailKey, email);
    await prefs.setInt(_winegrowerIdKey, winegrowerId);
    await prefs.setInt(_fieldWorkerIdKey, fieldWorkerId);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  Future<int?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_userIdKey);
  }

  Future<String?> getUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userEmailKey);
  }

  Future<int?> getWinegrowerId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_winegrowerIdKey);
  }

  Future<int?> getFieldWorkerId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_fieldWorkerIdKey);
  }

  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
    await prefs.remove(_userIdKey);
    await prefs.remove(_userEmailKey);
    await prefs.remove(_winegrowerIdKey);
    await prefs.remove(_fieldWorkerIdKey);
  }
}
