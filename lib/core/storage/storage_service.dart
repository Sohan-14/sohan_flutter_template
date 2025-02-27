import 'package:get_storage/get_storage.dart';

class StorageService {
  StorageService._internal();
  static final StorageService instance = StorageService._internal();

  final GetStorage _storage = GetStorage();

  Future<void> saveData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  dynamic getData(String key) {
    return _storage.read(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  bool isDataExists(String key) {
    return _storage.hasData(key);
  }
}
