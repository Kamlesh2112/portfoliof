import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class IconFont extends StatelessWidget {
  final String url;
  final IconData? icon;
  const IconFont({super.key, required this.url, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          throw "Could not laucnh";
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: FaIcon(
          icon,
          color: AppColors.accentColor,
          size: 40,
        ),
      ),
    );
  }
}
