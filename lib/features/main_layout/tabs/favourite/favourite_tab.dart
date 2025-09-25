import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/widgets/custom_event_item.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:evently_app/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteTab extends StatelessWidget {
  const FavouriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                prefixIconColor: ColorsManager.blue,
                hintText: 'Search for events',
                hintStyle: Theme.of(context).textTheme.displaySmall,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: ColorsManager.blue, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: ColorsManager.blue, width: 1),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) => CustomEventItem(
                event: EventModel(
                  category: CategoryModel.categoriesWithAll[3],
                  title: 'This is a Birthday Party ',
                  description: 'This is a Birthday Party ',
                  dateTime: DateTime.now(),
                  timeOfDay: TimeOfDay.now(),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
            ),
          ),
        ],
      ),
    );
  }
}
