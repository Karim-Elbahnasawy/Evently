import 'package:evently_app/core/routes_manager/app_routes.dart';
import 'package:evently_app/features/auth/forget_password/forget_password.dart';
import 'package:evently_app/features/auth/login/login.dart';
import 'package:evently_app/features/auth/register/register.dart';
import 'package:evently_app/features/create_event/create_event.dart';
import 'package:evently_app/features/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

abstract class RoutesManager {
  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.register:
        {
          return MaterialPageRoute(builder: (context) => Register());
        }
      case AppRoutes.login:
        {
          return MaterialPageRoute(builder: (context) => Login());
        }
      case AppRoutes.forgetPassword:
        {
          return MaterialPageRoute(builder: (context) => ForgetPassword());
        }
      case AppRoutes.mainLayout:
        {
          return MaterialPageRoute(builder: (context) => MainLayout());
        }
      case AppRoutes.createEvent:
        {
          return MaterialPageRoute(builder: (context) => CreateEvent());
        }
    }
    return null;
  }
}
