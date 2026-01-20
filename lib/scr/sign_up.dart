import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoponline/core/theme/app_colors.dart';
import 'package:shoponline/scr/widgets/go_button.dart';
import 'package:shoponline/scr/widgets/text_field_widget.dart';

import '../core/theme/AppSize.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            TextFieldWidget(labelText: 'Name', hintText: 'Name'),
            AppSize.height10,
            TextFieldWidget(labelText: 'Email', hintText: 'Email'),
            AppSize.height10,
            TextFieldWidget(labelText: 'Password', hintText: 'Password'),
            AppSize.height10,
            TextFieldWidget(
              labelText: 'Confirm password',
              hintText: 'Confirm password',
            ),

            AppSize.height40,
            GoButton(title: 'Sign Up', onPressed: () {
              Navigator.pushNamed(context, '/congratulation');

            }),
            AppSize.height10,
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an Account? ",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    TextSpan(
                      text: "Sign In",
                      style: TextStyle(
                        color: AppColors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
