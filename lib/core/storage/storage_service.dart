import 'package:get_storage/get_storage.dart';

class StorageService {
  static StorageService? _instance;
  late final GetStorage _storage;

  StorageService._internal() {
    _storage = GetStorage();
  }

  factory StorageService() {
    _instance ??= StorageService._internal();
    return _instance!;
  }

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
