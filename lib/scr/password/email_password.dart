import 'package:flutter/material.dart';
import 'package:shoponline/scr/widgets/go_button.dart';

class EmailPassword extends StatelessWidget {
  const EmailPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GoButton(title: 'Reset Password', onPressed: (){
          Navigator.pushNamed(context, '/newPassword');
        }),
      ),
    );
  }
}
