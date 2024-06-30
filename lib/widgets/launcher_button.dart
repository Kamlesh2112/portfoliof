import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';

class LauncherButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;
  const LauncherButton(
      {super.key, required this.buttonTitle, required this.onTap});

  @override
  GestureDetector build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            buttonTitle,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.accentColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.accentColor,
              decorationThickness: 2,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.arrow_outward,
            color: AppColors.accentColor,
          ),
        ],
      ),
    );
  }
}
