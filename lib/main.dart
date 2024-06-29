import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/home/home_page.dart';
import 'package:portfolio/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adarsh V Pandey',
      theme: ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.accentColor,
          secondary: AppColors.backgroundColor,
          tertiary: AppColors.secondaryColor,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
