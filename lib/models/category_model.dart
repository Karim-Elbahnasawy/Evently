import 'package:evently_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  String id;
  String name;
  IconData icon;
  String imagePath;

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.imagePath,
  });

static List<CategoryModel> getcategoriesWithAll(BuildContext context) {
  AppLocalizations appLocalizations =AppLocalizations.of(context)!;
    return [
    CategoryModel(id: '0', name: appLocalizations.all, icon: Icons.all_inclusive_outlined, imagePath: ''),
    CategoryModel(id: '1', name: appLocalizations.sports, icon: Icons.sports_football_outlined, imagePath: ''),
    CategoryModel(id: '2', name: appLocalizations.birthday, icon: Icons.cake_outlined, imagePath: ''),
    CategoryModel(id: '3', name: appLocalizations.meeting, icon: Icons.laptop_outlined, imagePath: ''),
    CategoryModel(id: '4', name: appLocalizations.gaming, icon: Icons.gamepad_outlined, imagePath: ''),
    CategoryModel(id: '5', name: appLocalizations.eating, icon: Icons.local_pizza_outlined, imagePath: ''),
    CategoryModel(id: '6', name: appLocalizations.holiday, icon: Icons.holiday_village_outlined, imagePath: ''),
    CategoryModel(id: '7', name: appLocalizations.exhibition, icon: Icons.water_drop_outlined, imagePath: ''),
    CategoryModel(id: '8', name: appLocalizations.workshop, icon: Icons.work_history_outlined, imagePath: ''),
    CategoryModel(id: '9', name: appLocalizations.book_club, icon: Icons.book_outlined, imagePath: ''),
   ];
  }

static List<CategoryModel> getcategories(BuildContext context) {
  AppLocalizations appLocalizations =AppLocalizations.of(context)!;
    return [
    CategoryModel(id: '1', name: appLocalizations.sports, icon: Icons.sports_football_outlined, imagePath: ''),
    CategoryModel(id: '2', name: appLocalizations.birthday, icon: Icons.cake_outlined, imagePath: ''),
    CategoryModel(id: '3', name: appLocalizations.meeting, icon: Icons.laptop_outlined, imagePath: ''),
    CategoryModel(id: '4', name: appLocalizations.gaming, icon: Icons.gamepad_outlined, imagePath: ''),
    CategoryModel(id: '5', name: appLocalizations.eating, icon: Icons.local_pizza_outlined, imagePath: ''),
    CategoryModel(id: '6', name: appLocalizations.holiday, icon: Icons.holiday_village_outlined, imagePath: ''),
    CategoryModel(id: '7', name: appLocalizations.exhibition, icon: Icons.water_drop_outlined, imagePath: ''),
    CategoryModel(id: '8', name: appLocalizations.workshop, icon: Icons.work_history_outlined, imagePath: ''),
    CategoryModel(id: '9', name: appLocalizations.book_club, icon: Icons.book_outlined, imagePath: ''),
  ];
  }
}
