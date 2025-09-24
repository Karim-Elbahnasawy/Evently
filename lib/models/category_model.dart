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

static List<CategoryModel> categoriesWithAll = [
    CategoryModel(id: '0', name: 'All', icon: Icons.all_inclusive_outlined, imagePath: ''),
    CategoryModel(id: '1', name: 'Sports', icon: Icons.sports_football_outlined, imagePath: ''),
    CategoryModel(id: '2', name: 'BirthDay', icon: Icons.cake_outlined, imagePath: ''),
    CategoryModel(id: '3', name: 'Meeting', icon: Icons.laptop_outlined, imagePath: ''),
    CategoryModel(id: '4', name: 'Gaming', icon: Icons.gamepad_outlined, imagePath: ''),
    CategoryModel(id: '5', name: 'Eating', icon: Icons.local_pizza_outlined, imagePath: ''),
    CategoryModel(id: '6', name: 'Holiday', icon: Icons.holiday_village_outlined, imagePath: ''),
    CategoryModel(id: '7', name: 'Exhibition', icon: Icons.water_drop_outlined, imagePath: ''),
    CategoryModel(id: '8', name: 'WorkShop', icon: Icons.work_history_outlined, imagePath: ''),
    CategoryModel(id: '9', name: 'BookClub', icon: Icons.book_outlined, imagePath: ''),
  ];
}
