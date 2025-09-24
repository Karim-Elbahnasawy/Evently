import 'package:evently_app/features/main_layout/tabs/favourite/favourite_tab.dart';
import 'package:evently_app/features/main_layout/tabs/home_tab/home_tab.dart';
import 'package:evently_app/features/main_layout/tabs/map/map_tab.dart';
import 'package:evently_app/features/main_layout/tabs/profile_tab/profile_tab.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final List<Widget> tabs = [HomeTab(), MapTab(), FavouriteTab(), ProfileTab()];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: tabs[_selectedIndex],
      bottomNavigationBar: _buildNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFad(),
    );
  }
  FloatingActionButton _buildFad() {
    return FloatingActionButton(onPressed: () {}, child: Icon(Icons.add));
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 1
                  ? Icons.location_on
                  : Icons.location_on_outlined,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 2 ? Icons.favorite : Icons.favorite_outline,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 3 ? Icons.person : Icons.person_outline,
            ),
            label: 'Profile',
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
