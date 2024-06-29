import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';

class LauncherButton extends StatelessWidget {
  final String buttonTitle;
  const LauncherButton({super.key, required this.buttonTitle});

  @override
  ElevatedButton build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => (),
      label:  Text(
        buttonTitle,
        style: const TextStyle(
          decorationColor: AppColors.accentColor,
          fontSize: 18,
        ),
      ),
      icon: const Icon(Icons.arrow_outward),
      iconAlignment: IconAlignment.end,
    );
  }
}
