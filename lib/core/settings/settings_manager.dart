import 'package:get_storage/get_storage.dart';

class SettingsManager {
  final GetStorage _storage = GetStorage();

  bool get isDarkMode => _storage.read('isDarkMode') ?? false;

  Future<void> saveDarkMode(bool value) async {
    await _storage.write('isDarkMode', value);
  }
}
