import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class GoButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const GoButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          letterSpacing: 4,
          color: AppColors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

