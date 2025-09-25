import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/widgets/custom_elvated_button.dart';
import 'package:evently_app/core/widgets/custom_tab_bar.dart';
import 'package:evently_app/core/widgets/custom_text_form_field.dart';
import 'package:evently_app/core/widgets/cutom_text_button.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  late final TextEditingController _titleContoller;
  late final TextEditingController _descriptionContoller;
  @override
  void initState() {
    super.initState();
    _titleContoller = TextEditingController();
    _descriptionContoller = TextEditingController();
  }

  @override
  void dispose() {
    _titleContoller.dispose();
    _descriptionContoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text('Create Event')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16.r),
                child: Image.asset(ImageAssets.meeting),
              ),
              SizedBox(height: 8.h),
              CustomTabBar(
                selectedBgColor: ColorsManager.blue,
                selectedFgColor: ColorsManager.white,
                unSelectedBgColor: Colors.transparent,
                unSelectedFgColor: ColorsManager.blue,
                categories: CategoryModel.categories,
              ),
              SizedBox(height: 8.h),
              Text('Title', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'Event Title',
                controller: _titleContoller,
                prefixIcon: Icons.edit_note_outlined,
              ),
              SizedBox(height: 16.h),
              Text('Description', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: 8.h),
              CustomTextFormField(
                lines: 5,
                hintText: 'Event Description',
                controller: _descriptionContoller,
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Icon(Icons.date_range),
                  SizedBox(width: 8.w),
                  Text(
                    'Event Date',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Spacer(),
                  CustomTextButton(
                    text: 'Choose Date',
                    onTap: () {
                      showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365)),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Icon(Icons.timer_outlined),
                  SizedBox(width: 8.w),
                  Text(
                    'Event Time',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Spacer(),
                  CustomTextButton(
                    text: 'Choose Time',
                    onTap: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                    },
                  ),
                ],
              ),
              // Spacer(flex: 6),
              SizedBox(height: 16.h),
              Text('Location', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: 8.h),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: ColorsManager.blue, width: 1),
                  padding: REdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(16.r),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Row(
                      children: [
                        Card(
                          color: ColorsManager.blue,
                          child: Padding(
                            padding: REdgeInsets.all(8),
                            child: Icon(
                              Icons.my_location_outlined,
                              color: ColorsManager.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Choose Event Location',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              CustomElvatedButton(onPressed: () {}, text: 'Add Event'),
              SizedBox(height: 22.h),
            ],
          ),
        ),
      ),
    );
  }
}
