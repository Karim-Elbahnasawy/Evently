import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/widgets/custom_tab_bar.dart';
import 'package:evently_app/core/widgets/custom_event_item.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:evently_app/models/event_model.dart';
import 'package:evently_app/providers/language_provider.dart';
import 'package:evently_app/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return Column(
      children: [
        Container(
          padding: REdgeInsets.only(top: 50),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
          ),
          child: Column(
            children: [
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${appLocalizations.welcome_back} ✨',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Karim Gamal',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: ColorsManager.ofWhite,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'Cairo, Egypt',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        themeProvider.changeAppTheme(
                          themeProvider.isDark
                              ? ThemeMode.light
                              : ThemeMode.dark,
                        );
                      },
                      icon: Icon(
                        themeProvider.isDark
                            ? Icons.dark_mode
                            : Icons.light_mode,
                        color: ColorsManager.ofWhite,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        languageProvider.changeAppLanguage(
                          languageProvider.isEnglish
                              ? 'ar'
                              :'en',
                        );
                      },
                      child: Card(
                        color: ColorsManager.ofWhite,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                           languageProvider.isEnglish? 'EN' :'Ar',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTabBar(
                selectedBgColor: ColorsManager.white,
                selectedFgColor: ColorsManager.blue,
                unSelectedBgColor: Colors.transparent,
                unSelectedFgColor: ColorsManager.whiteBlue,
                categories: CategoryModel.getcategoriesWithAll(context),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.only(top: 16),
            itemBuilder: (context, index) => CustomEventItem(
              event: EventModel(
                category: CategoryModel.getcategoriesWithAll(context)[3],
                title: 'This is a Birthday Party ',
                description: 'This is a Birthday Party ',
                dateTime: DateTime.now(),
                timeOfDay: TimeOfDay.now(),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
