import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSharedPrefrences {
  static SharedPreferences? _preferences;
  static const _KeyUsername = 'username';

  static Future init() async => _preferences = await SharedPreferences.getInstance();

  static Future setUsername(String username) async =>
      await _preferences?.setString(_KeyUsername, username);
  static String? getUsername() => _preferences?.getString(_KeyUsername);
}

final _storage = const FlutterSecureStorage();
final TextEditingController emailController = TextEditingController(text: '');
final TextEditingController passwordController = TextEditingController(text: '');

