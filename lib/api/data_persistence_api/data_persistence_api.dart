abstract interface class DataPersistenceApi {
  /// Int型の書き込み
  Future<void> setInt(String key, int value);

  /// Bool型の書き込み
  Future<void> setBool(String key, bool value);

  /// Double型の書き込み
  Future<void> setDouble(String key, double value);

  /// String型の書き込み
  Future<void> setString(String key, String value);

  /// 文字列Listの書き込み
  Future<void> setStringList(String key, List<String> value);

  /// Int型の取得
  Future<int?> getInt(String key);

  /// Bool型の取得
  Future<bool?> getBool(String key);

  /// Double型の取得
  Future<double?> getDouble(String key);

  /// String型の取得
  Future<String?> getString(String key);

  /// 文字列配列の取得
  Future<List<String>?> getStringList(String key);

  /// データの削除
  Future<void> remove(String key);

  /// 全データの削除
  Future<void> removeAll();
}
