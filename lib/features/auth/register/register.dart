import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/validators.dart';
import 'package:evently_app/core/routes_manager/app_routes.dart';
import 'package:evently_app/core/widgets/custom_elvated_button.dart';
import 'package:evently_app/core/widgets/custom_text_form_field.dart';
import 'package:evently_app/core/widgets/cutom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

bool isSecurePassword = true;
bool isSecureRePassword = true;
late TextEditingController _nameController;
late TextEditingController _emailController;
late TextEditingController _passwordController;
late TextEditingController _rePasswordController;
GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _RegisterState extends State<Register> {
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _rePasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text('Register')),
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.only(
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              Image.asset(ImageAssets.logo),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      controller: _nameController,
                      validator: Validators.validateName,
                      labelText: 'Name',
                      prefixIcon: Icons.person,
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(height: 16.h),
                    CustomTextFormField(
                      controller: _emailController,
                      validator: Validators.validateEmail,
                      labelText: 'Email',
                      prefixIcon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 16.h),
                    CustomTextFormField(
                      controller: _passwordController,
                      validator: Validators.validatePassword,
                      labelText: 'Password',
                      prefixIcon: Icons.lock,
                      suffixIcon: IconButton(
                        onPressed: _onTogglePasswordIconClicked,
                        icon: Icon(
                          isSecurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      isSecure: isSecurePassword,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 16.h),
                    CustomTextFormField(
                      controller: _rePasswordController,
                      validator: Validators.validateRePassword,
                      labelText: 'Re Password',
                      prefixIcon: Icons.lock,
                      suffixIcon: IconButton(
                        onPressed: _onToggleRePasswordIconClicked,
                        icon: Icon(
                          isSecureRePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      isSecure: isSecureRePassword,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 16.h),
                    CustomElvatedButton(
                      onPressed: _createAccount,
                      text: 'Create Account',
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already Have Account ? ',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        CustomTextButton(
                          text: 'Login',
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.login,
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onToggleRePasswordIconClicked() {
    setState(() {
      isSecureRePassword = !isSecureRePassword;
    });
  }

  void _onTogglePasswordIconClicked() {
    setState(() {
      isSecurePassword = !isSecurePassword;
    });
  }

  void _createAccount() {
    if (_formKey.currentState?.validate() == false) return;
  }
}
