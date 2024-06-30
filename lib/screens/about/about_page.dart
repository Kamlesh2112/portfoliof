import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/desktop_about_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const DesktopAboutPage(),
    );
  }
}
