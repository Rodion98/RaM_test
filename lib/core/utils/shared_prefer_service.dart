import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferService {
  SharedPreferences? _sharedPreferences;

  Future<SharedPreferService> init() async {
    // Initialize shared preferences
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  SharedPreferences? get instance => _sharedPreferences;

  Future<void> saveLocale(Locale locale) async {
    await _sharedPreferences?.setString(
      'locale',
      locale.toString(),
    );
  }

  Locale? getLocale() {
    final locale = _sharedPreferences?.getString('locale');
    if (locale != null) {
      final localeList = locale.split('_');
      return Locale(localeList[0]);
    }
    return null;
  }
}
