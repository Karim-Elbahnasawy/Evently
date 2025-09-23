import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.suffixIcon,
    required this.prefixIcon,
    this.isSecure = false,
    required this.keyboardType,
    this.validator,
    this.controller,
  });
  final String labelText;
  final Widget? suffixIcon;
  final IconData prefixIcon;
  final bool isSecure;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: isSecure,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
        labelText: labelText,
      ),
    );
  }
}
