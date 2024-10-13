import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class LocalDB{
  static Future<void> saveToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', token);
  log('this is the token: $token');
}
 static Future<void> saveResetToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('reset_token', token);
  log('this is the token: $token');
}

static Future<void> saveEmail(String email) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('email', email);
  log('this is the user email: $email');
}

  static Future<String?> getResetToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getString('reset_token');
  
}

static Future<String?> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

  static Future<String?> getEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('email');
}
}