import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  /*
  *  App Variables Begin
  * */

  int get userId => _getFromDisk(_KEY_USER_ID) ?? -1;

  set userId(int value) => _saveToDisk(_KEY_USER_ID, value);

  int get roleId => _getFromDisk(_KEY_ROLE_ID) ?? -1;

  set roleId(int value) => _saveToDisk(_KEY_ROLE_ID, value);

  String get userName => _getFromDisk(_KEY_USER_NAME) ?? "";

  set userName(String value) => _saveToDisk(_KEY_USER_NAME, value);

  String get fullName => _getFromDisk(_KEY_FULL_NAME) ?? "";

  set fullName(String value) => _saveToDisk(_KEY_FULL_NAME, value);

  String get phone => _getFromDisk(_KEY_PHONE) ?? "";

  set phone(String value) => _saveToDisk(_KEY_PHONE, value);

  String get token => _getFromDisk(_KEY_TOKEN) ?? "browsing";

  set token(String value) => _saveToDisk(_KEY_TOKEN, value);

  String get firebaseId => _getFromDisk(_KEY_FIREBASE_ID) ?? "";

  set firebaseId(String value) => _saveToDisk(_KEY_FIREBASE_ID, value);

  /*
  *  App Variables End
  * */

  void logout() {
    userId = -1;
    roleId = -1;
    userName = "";
    fullName = "";
    phone = "";
    token = "browsing";
  }

  /*
  *  App Constants Begin
  * */
  static const _KEY_USER_ID = "user_id";
  static const _KEY_ROLE_ID = "user_id";
  static const _KEY_USER_NAME = "user_name";
  static const _KEY_FULL_NAME = "user_name";
  static const _KEY_PHONE = "phone";
  static const _KEY_TOKEN = "token";
  static const _KEY_FIREBASE_ID = "firebaseid";

  /*
  *  App Constants End
  * */

  static LocalStorageService? _instance;
  static SharedPreferences? _preferences;

  static Future<LocalStorageService?> getInstance() async {
    _instance ??= LocalStorageService();

    _preferences ??= await SharedPreferences.getInstance();

    return _instance;
  }

  dynamic _getFromDisk(String key) {
    var value = _preferences?.get(key);
    debugPrint(
        '(TRACE) LocalStorageService:_getFromDisk. key: $key value: $value');
    return value;
  }

  void _saveToDisk<T>(String key, T content) {
    debugPrint(
        '(TRACE) LocalStorageService:_saveToDisk. key: $key value: $content');

    if (content is String) {
      _preferences?.setString(key, content);
    }
    if (content is bool) {
      _preferences?.setBool(key, content);
    }
    if (content is int) {
      _preferences?.setInt(key, content);
    }
    if (content is double) {
      _preferences?.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences?.setStringList(key, content);
    }
  }
}
