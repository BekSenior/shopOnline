import 'package:flutter/material.dart';
import 'package:shoponline/core/theme/app_size.dart';
import 'package:shoponline/scr/widgets/go_button.dart';

import '../core/theme/app_colors.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Congratulation',
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'Your account has been successfully created',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppSize.height70,
              GoButton(
                title: 'Sign In',
                onPressed: () => Navigator.pushNamed(context, '/signIn'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
