import 'package:flutter/material.dart';
import 'package:shoponline/scr/widgets/text_field_widget.dart';

import '../../core/theme/app_size.dart';
import '../../core/theme/app_colors.dart';
import '../widgets/go_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: ()=>Navigator.pushNamed(context, '/signIn'),
            icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Back'),
      ),
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Password Reset',
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "Enter your email address.We'll send a link to reset your password",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextFieldWidget(labelText: 'Email', hintText: 'Email...'),
              AppSize.height70,
              GoButton(
                title: 'Send',
                onPressed: () => Navigator.pushNamed(context, '/passwordReset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
