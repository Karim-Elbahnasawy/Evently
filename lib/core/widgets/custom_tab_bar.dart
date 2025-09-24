import 'package:evently_app/core/widgets/custom_tab_item.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
    required this.selectedBgColor,
    required this.selectedFgColor,
    required this.unSelectedBgColor,
    required this.unSelectedFgColor,
    required this.categories,
  });

  final Color selectedBgColor;
  final Color selectedFgColor;
  final Color unSelectedBgColor;
  final Color unSelectedFgColor;
  final List<CategoryModel> categories;
  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.categories.length,
      child: TabBar(
        onTap: onSelectedTab,
        padding: REdgeInsets.symmetric(vertical: 16),
        indicatorColor: Colors.transparent,
        isScrollable: true,
        tabs: widget.categories
            .map(
              (category) => CustomTabItem(
                selectedBgColor: widget.selectedBgColor,
                selectedFgColor: widget.selectedFgColor,
                unSelectedBgColor: widget.unSelectedBgColor,
                unSelectedFgColor: widget.unSelectedFgColor,
                isSelected:
                    _selectedIndex == widget.categories.indexOf(category),
                category: category,
              ),
            )
            .toList(),
      ),
    );
  }

  void onSelectedTab(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
