import 'package:flutter/material.dart';

import '../../core/theme/app_size.dart';
import '../../core/theme/app_colors.dart';
import '../widgets/go_button.dart';
class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: ()=>Navigator.pushNamed(context, '/forget'),
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
                'Instructions!',
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Check your inbox and follow the instructions to rest your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppSize.height70,
              GoButton(
                title: 'Go to Email',
                onPressed: () => Navigator.pushNamed(context, '/emailPassword'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
