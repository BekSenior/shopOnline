import 'package:flutter/material.dart';
import 'package:shoponline/core/theme/AppSize.dart';
import 'package:shoponline/core/theme/app_colors.dart';
import 'package:shoponline/scr/widgets/go_button.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/welcome.png'),
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'SHOPIN',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                AppSize.height50,
                Text(
                  textAlign: TextAlign.center,

                  'Amazing shopping',
                  style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 25,
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                AppSize.height10,
                Spacer(),
                GoButton(
                  title: 'Explore',
                  onPressed: () => Navigator.pushNamed(context, '/signIn'),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
