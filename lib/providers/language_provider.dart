import 'package:evently_app/core/prefs/prefs_manager.dart';
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String currentlanguage = PrefsManager.getSavedLanguage()??'en';
  void changeAppLanguage(String newLanguage) {
    if (currentlanguage == newLanguage) return;
    currentlanguage = newLanguage;
    PrefsManager.saveLanguage(currentlanguage);
    notifyListeners();
  }

  bool get isEnglish => currentlanguage == 'en';
}
