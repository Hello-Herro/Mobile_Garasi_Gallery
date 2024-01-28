import 'secure_storage_source.dart';

abstract class SecureStorageRepository {
  Future<void> writeData<T>(String key, T value);
  Future<T?> readData<T>(String key);
  Future<void> deleteData(String key);
}

class SecureStorageRepositoryImpl implements SecureStorageRepository {
  final SecureStorageSource _dataSource;
  SecureStorageRepositoryImpl(this._dataSource);

  @override
  Future<T?> readData<T>(String key) async {
    return await _dataSource.getData<T>(key) as T;
  }

  @override
  Future<void> writeData<T>(String key, T value) async {
    await _dataSource.setData<T>(key, value);
  }

  @override
  Future<void> deleteData(String key) async {
    await _dataSource.deleteData(key);
  }
}
