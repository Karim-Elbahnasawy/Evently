import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.isSecure = false,
    this.keyboardType,
    this.validator,
    this.controller,
    this.lines = 1,
  });
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final bool isSecure;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: lines,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: isSecure,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon,
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}
