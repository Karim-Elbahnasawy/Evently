import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/features/main_layout/tabs/profile_tab/drop_down_item.dart';
import 'package:evently_app/features/main_layout/tabs/profile_tab/logout_button.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorsManager.blue,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64.r)),
          ),
          child: Padding(
            padding: REdgeInsets.only(top: 64, left: 16, right: 16, bottom: 16),
            child: Row(
              children: [
                Image.asset(ImageAssets.route),
                SizedBox(width: 16.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Karim Gamal',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'karimgamal@gmail.com',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 24.h),
        DropDownItem(
          label: appLocalizations.theme,
          selectedItem: appLocalizations.light,
          menuItems: [appLocalizations.light, appLocalizations.dark],
        ),
        SizedBox(height: 16.h),
        DropDownItem(
          label: appLocalizations.language,
          selectedItem: 'English',
          menuItems: ['English', 'عربى'],
        ),
        Spacer(flex: 7),
        LogoutButton(),
        Spacer(flex: 3),
      ],
    );
  }
}
