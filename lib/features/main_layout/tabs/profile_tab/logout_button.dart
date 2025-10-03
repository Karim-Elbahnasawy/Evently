import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/routes_manager/app_routes.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({super.key});

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
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
        onPressed: _logOut,
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

  void _logOut() {
   FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, AppRoutes.login);
  }
}
