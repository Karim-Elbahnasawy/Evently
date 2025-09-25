import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/resourses/validators.dart';
import 'package:evently_app/core/widgets/custom_elvated_button.dart';
import 'package:evently_app/core/widgets/custom_text_form_field.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

late final TextEditingController _emailController;

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalizations.forget_password_title),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: ColorsManager.blue),
        ),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(ImageAssets.forgetPassword),
            SizedBox(height: 24.h),
            CustomTextFormField(
              validator: Validators.validateEmail,
              controller: _emailController,
              labelText: appLocalizations.email,
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 24.h),
            CustomElvatedButton(
              onPressed: () {},
              text: appLocalizations.reset_password,
            ),
          ],
        ),
      ),
    );
  }
}
