import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';

class SkillsTile extends StatelessWidget {
  final String title;

  const SkillsTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColors.secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        
      ),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, color: AppColors.accentColor),
          ),
        ),
      ),
    );
  }
}
