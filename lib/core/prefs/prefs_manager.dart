import 'package:evently_app/core/resourses/constants_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsManager {
  static late SharedPreferences prefs;
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void saveTheme(ThemeMode newTheme) {
    String theme = newTheme == ThemeMode.light ? "Light" : "Dark";
    prefs.setString(CacheConstants.themeKey, theme);
  }

  static ThemeMode? getSavedTheme() {
    String? savedTheme = prefs.getString(CacheConstants.themeKey);
    if (savedTheme == null) {
      return null;
    } else {
      ThemeMode themeMode = savedTheme == "Light"
          ? ThemeMode.light
          : ThemeMode.dark;
      return themeMode;
    }
  }

  static void saveLanguage(String language) {
    prefs.setString(CacheConstants.languageKey, language);
  }

  static String? getSavedLanguage() {
    String? savedLanguage = prefs.getString(CacheConstants.languageKey);
    return savedLanguage;
  }
}
