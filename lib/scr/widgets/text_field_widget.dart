import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  const TextFieldWidget({
    super.key, required this.labelText, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelStyle: TextStyle(
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
        labelText: labelText,
        hintText: hintText,
        focusColor: AppColors.gray,
        hoverColor: AppColors.blue,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.blue),
        ),
      ),
    );
  }
}