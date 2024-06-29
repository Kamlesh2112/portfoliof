import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/desktop_home_page.dart';
import 'package:portfolio/screens/home/mobile_home_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop:(context)=> const DesktopHomePage(),
      mobile: (context)=> const MobileHomePage(),
    );
  }
}

