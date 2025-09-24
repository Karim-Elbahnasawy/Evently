import 'package:evently_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabItem extends StatelessWidget {
  const CustomTabItem({
    super.key,
    required this.selectedBgColor,
    required this.selectedFgColor,
    required this.unSelectedBgColor,
    required this.unSelectedFgColor,
    required this.isSelected,
    required this.category,
  });

  final Color selectedBgColor;
  final Color selectedFgColor;
  final Color unSelectedBgColor;
  final Color unSelectedFgColor;
  final bool isSelected;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36.r),
        color: isSelected ? selectedBgColor : unSelectedBgColor,
        border: Border.all(color: selectedBgColor, width: 1.w),
      ),
      child: Row(
        children: [
          Icon(
            category.icon,
            color: isSelected ? selectedFgColor : unSelectedFgColor,
          ),
          SizedBox(width: 8.w),
          Text(
            category.name,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: isSelected ? selectedFgColor : unSelectedFgColor,
            ),
          ),
        ],
      ),
    );
  }
}
