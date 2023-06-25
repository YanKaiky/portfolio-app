import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/screens/home/index.dart';
import 'package:portfolio/utils/colors.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yan Kaiky',
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.bgcolor,
        canvasColor: AppColors.bgcolor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: AppColors.white)
            .copyWith(
              bodyText1: const TextStyle(color: AppColors.text),
              bodyText2: const TextStyle(color: AppColors.text),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
