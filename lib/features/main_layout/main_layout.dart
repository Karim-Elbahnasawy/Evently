import 'package:evently_app/core/routes_manager/app_routes.dart';
import 'package:evently_app/features/main_layout/tabs/favourite_tab/favourite_tab.dart';
import 'package:evently_app/features/main_layout/tabs/home_tab/home_tab.dart';
import 'package:evently_app/features/main_layout/tabs/map_tab/map_tab.dart';
import 'package:evently_app/features/main_layout/tabs/profile_tab/profile_tab.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final List<Widget> tabs = [HomeTab(), MapTab(), FavouriteTab(), ProfileTab()];
  int _selectedIndex = 0;
  late AppLocalizations appLocalizations;

  @override
  Widget build(BuildContext context) {
    appLocalizations = AppLocalizations.of(context)!;
    return Scaffold(
      extendBody: true,
      body: tabs[_selectedIndex],
      bottomNavigationBar: _buildNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFad(),
    );
  }

  FloatingActionButton _buildFad() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.createEvent);
      },
      child: Icon(Icons.add),
    );
  }

  BottomAppBar _buildNavBar() {
    return BottomAppBar(
      notchMargin: 8,
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
            label: appLocalizations.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 1
                  ? Icons.location_on
                  : Icons.location_on_outlined,
            ),
            label: appLocalizations.map,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 2 ? Icons.favorite : Icons.favorite_outline,
            ),
            label: appLocalizations.favourite,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 3 ? Icons.person : Icons.person_outline,
            ),
            label: appLocalizations.profile,
          ),
        ],
      ),
    );
  }

  void _onTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
