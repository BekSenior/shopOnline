import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoponline/core/theme/AppSize.dart';
import 'package:shoponline/core/theme/app_colors.dart';
import 'package:shoponline/scr/widgets/go_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                color: AppColors.blue,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
                labelText: 'Email',
                hintText: 'Email',
                focusColor: AppColors.gray,
                hoverColor: AppColors.blue,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.blue),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
                labelText: 'Password',
                hintText: 'Password',
                focusColor: AppColors.gray,
                hoverColor: AppColors.blue,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.blue),
                ),
              ),
            ),
            AppSize.height10,
            GoButton(title: 'Sign In', onPressed: (){}),
            AppSize.height50,
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "Sign Up",
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
            )
          ],
        ),
      ),
    );
  }
}
