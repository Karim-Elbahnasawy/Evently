import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: REdgeInsets.all(16),
          backgroundColor: ColorsManager.red,
          foregroundColor: ColorsManager.white,
          textStyle: Theme.of(context).textTheme.bodyMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.logout_outlined),
            SizedBox(width: 8.w),
            Text(appLocalizations.logout),
          ],
        ),
      ),
    );
  }
}
