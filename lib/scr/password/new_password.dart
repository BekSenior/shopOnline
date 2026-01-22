import 'package:flutter/material.dart';

import '../../core/theme/AppSize.dart';
import '../../core/theme/app_colors.dart';
import '../widgets/go_button.dart';
import '../widgets/text_field_widget.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                color: AppColors.blue,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFieldWidget(labelText: 'New Password', hintText: 'New Password'),
            AppSize.height10,
            TextFieldWidget(labelText: 'Confirm Password', hintText: 'Confirm Password'),
            AppSize.height40,
            GoButton(title: 'Save', onPressed: () {
              Navigator.pushNamed(context, '/success');
            }),
          ],
        ),
      ),
    );;
  }
}
