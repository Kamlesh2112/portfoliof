import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopAboutPage extends StatefulWidget {
  const DesktopAboutPage({super.key});

  @override
  State<DesktopAboutPage> createState() => _DesktopAboutPageState();
}

class _DesktopAboutPageState extends State<DesktopAboutPage> {
  // function to launch any other link throught parameter
  Future launchLink(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw "Could not laucnh";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "ABOUT ME",
                        style: TextStyle(
                          color: AppColors.accentColor,
                          fontSize: 76,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        ),
                      ),
                      SizedBox(
                        width: 700,
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "I am a app developer based in India. Has Computer Science background.",
                                style: TextStyle(fontSize: 32),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "I am a passionate Computer Science student with a strong interest in application development and Java programming. I love exploring new technologies and applying them to solve real-world problems. Currently, I'm honing my skills in Flutter and Firebase to create robust mobile applications.",
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () => launchLink(
                                        'https://drive.google.com/file/d/1mK_3AtPgi3o0hiqryqdE-txjOTcRQMk1/view?usp=sharing'),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      foregroundColor:
                                          AppColors.backgroundColor,
                                      backgroundColor: AppColors.accentColor,
                                      elevation: 0,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    icon: const Icon(Icons.arrow_outward),
                                    iconAlignment: IconAlignment.end,
                                    label: const Text(
                                      "DOWNLOAD RESUME",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  IconButton(
                                    onPressed: () => launchLink(
                                        'https://www.linkedin.com/in/adarshpandey18/'),
                                    icon: const FaIcon(
                                        FontAwesomeIcons.linkedinIn),
                                    iconSize: 26,
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            AppColors.secondaryColor,
                                        iconColor: AppColors.accentColor,
                                        fixedSize: const Size(54, 54)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  IconButton(
                                    onPressed: () => launchLink(
                                        'https://github.com/adarshpandey18/'),
                                    icon: const FaIcon(FontAwesomeIcons.github),
                                    iconSize: 26,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.secondaryColor,
                                      iconColor: AppColors.accentColor,
                                      fixedSize: const Size(54, 54),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Image.asset('/assets/images/about_img.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
