import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/resourses/validators.dart';
import 'package:evently_app/core/routes_manager/app_routes.dart';
import 'package:evently_app/core/widgets/custom_elvated_button.dart';
import 'package:evently_app/core/widgets/custom_text_form_field.dart';
import 'package:evently_app/core/widgets/cutom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

bool isSecurePassword = true;
GlobalKey<FormState> _formKey = GlobalKey<FormState>();
late TextEditingController _emailController;
late TextEditingController _passwordController;

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                Image.asset(ImageAssets.logo),
                SizedBox(height: 24.h),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextFormField(
                        validator: Validators.validateEmail,
                        controller: _emailController,
                        labelText: 'Email',
                        prefixIcon: Icons.email,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 16.h),
                      CustomTextFormField(
                        validator: Validators.validatePassword,
                        controller: _passwordController,
                        labelText: 'Password',
                        prefixIcon: Icons.lock,
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: IconButton(
                          onPressed: _onTogglePasswordIconClicked,
                          icon: Icon(
                            isSecurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        isSecure: isSecurePassword,
                      ),
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: CustomTextButton(
                          text: 'Forget Password?',
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.forgetPassword,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 24.h),
                      CustomElvatedButton(onPressed: _login, text: 'Login'),
                      SizedBox(height: 24.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t Have Account ? ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          CustomTextButton(
                            text: 'Create Account',
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.register,
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: ColorsManager.blue,
                              indent: 42.w,
                              endIndent: 16.w,
                            ),
                          ),
                          Text(
                            'Or',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: ColorsManager.blue,
                              indent: 16.w,
                              endIndent: 42.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(ImageAssets.google),
                            SizedBox(width: 8.w),
                            Text(
                              'Login With Google',
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: ColorsManager.blue),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTogglePasswordIconClicked() {
    setState(() {
      isSecurePassword = !isSecurePassword;
    });
  }

  void _login() {
    if (_formKey.currentState?.validate() == false) return;
  }
}
