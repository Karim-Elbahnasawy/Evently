import 'package:evently_app/core/extensions/date_time_extension.dart';
import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/widgets/custom_elvated_button.dart';
import 'package:evently_app/core/widgets/custom_tab_bar.dart';
import 'package:evently_app/core/widgets/custom_text_form_field.dart';
import 'package:evently_app/core/widgets/cutom_text_button.dart';
import 'package:evently_app/l10n/app_localizations.dart';
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
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

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
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(appLocalizations.create_event)),
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
                categories: CategoryModel.getcategories(context),
              ),
              SizedBox(height: 8.h),
              Text(
                appLocalizations.title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: appLocalizations.event_title,
                controller: _titleContoller,
                prefixIcon: Icons.edit_note_outlined,
              ),
              SizedBox(height: 16.h),
              Text(
                appLocalizations.description,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                lines: 5,
                hintText: appLocalizations.event_description,
                controller: _descriptionContoller,
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Icon(Icons.date_range),
                  SizedBox(width: 8.w),
                  Text(
                    selectedDate.toFormatedDate,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Spacer(),
                  CustomTextButton(
                    text: appLocalizations.choose_date,
                    onTap: _selectEventDate,
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Icon(Icons.timer_outlined),
                  SizedBox(width: 8.w),
                  Text(
                    selectedDate.toFormatedTime,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Spacer(),
                  CustomTextButton(
                    text: appLocalizations.choose_time,
                    onTap: _selectEventTime
                  ),
                ],
              ),
              // Spacer(flex: 6),
              SizedBox(height: 16.h),
              Text(
                appLocalizations.location,
                style: Theme.of(context).textTheme.bodySmall,
              ),
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
                          appLocalizations.choose_event_location,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              CustomElvatedButton(
                onPressed: () {},
                text: appLocalizations.add_event,
              ),
              SizedBox(height: 22.h),
            ],
          ),
        ),
      ),
    );
  }

  void _selectEventDate() async {
    selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    )?? selectedDate;
    selectedDate = selectedDate.copyWith(hour: selectedTime.hour,minute: selectedTime.minute);
    setState(() {
      
    });
  }

  void _selectEventTime() async{
  selectedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now())??selectedTime;
  selectedDate = selectedDate.copyWith(hour: selectedTime.hour,minute: selectedTime.minute);
  setState(() {
    
  });
  }
}
