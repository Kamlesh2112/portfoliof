import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/widgets/launcher_button.dart';

class Project extends StatelessWidget {
  final String title;
  final String description;
  final String buttonTitle;
  final String imageUrl;
  final VoidCallback onTapLink;
  const Project(
      {super.key,
      required this.title,
      required this.description,
      required this.buttonTitle,
      required this.imageUrl,
      required this.onTapLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.backgroundColor),
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.secondaryColor,
                ),
                height: 400,
                width: 600,
              ),
              Container(
                height: 300,
                width: 500,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 32,
                    color: AppColors.accentColor,
                    fontFamily: GoogleFonts.bebasNeue().fontFamily,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                LauncherButton(
                  buttonTitle: buttonTitle,
                  onTap: onTapLink,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
