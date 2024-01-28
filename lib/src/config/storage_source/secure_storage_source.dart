

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureStorageSource {
  Future<T?> getData<T>(String key);
  Future<void> setData<T>(String key, T value);
  Future<void> deleteData(String key);
}

class SecureStorageSourceImpl implements SecureStorageSource {
  final FlutterSecureStorage _secureStorage;
  SecureStorageSourceImpl(this._secureStorage);

  @override
  Future<T?> getData<T>(String key) async {
    return await _secureStorage.read(key: key) as T;
  }

  @override
  Future<void> setData<T>(String key, T value) async {
    await _secureStorage.write(key: key, value: value.toString());
  }

  @override
  Future<void> deleteData(String key) async {
    await _secureStorage.delete(key: key);
  }
}
