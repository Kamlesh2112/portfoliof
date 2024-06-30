import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/widgets/launcher_button.dart';

class ProjectMobile extends StatelessWidget {
  final String title;
  final String description;
  final String buttonTitle;
  final String imageUrl;
  final VoidCallback onTapLink;
  const ProjectMobile(
      {super.key,
      required this.title,
      required this.description,
      required this.buttonTitle,
      required this.imageUrl,
      required this.onTapLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.secondaryColor,
                ),
                height: 343,
                width: 343,
              ),
              Container(
                width: 243,
                height: 243,
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
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              color: AppColors.accentColor,
              fontFamily: GoogleFonts.bebasNeue().fontFamily,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          LauncherButton(
            buttonTitle: buttonTitle,
            onTap: onTapLink,
          ),
        ],
      ),
    );
  }
}
