import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _preferences;

  factory LocalStorage() => LocalStorage._internal();

  LocalStorage._internal();

  Future<void> init() async =>
      _preferences = await SharedPreferences.getInstance();

  Object? get(String key) {
    Object? value = _preferences.get(key);
    print('(TRACE) LocalStorage:GET. key: $key value: $value');
    return value;
  }

  void set<T>(String key, T content) {
    print('(TRACE) LocalStorage:SET. key: $key value: $content');

    if (content is String) _preferences.setString(key, content);
    if (content is bool) _preferences.setBool(key, content);
    if (content is int) _preferences.setInt(key, content);
    if (content is double) _preferences.setDouble(key, content);
    if (content is List<String>) _preferences.setStringList(key, content);
  }
}
