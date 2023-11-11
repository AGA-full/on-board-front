import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard/domain/app_state.dart';
import 'package:onboard/presentation/auth_page.dart';
import 'package:onboard/presentation/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
        displayLarge: GoogleFonts.montserrat(
          fontWeight: FontWeight.w400,
          fontSize: 32,
          color: Colors.black,
        ),
          displayMedium: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 22,
            color: Colors.black,
          ),
          bodyMedium: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black,
          ),

      ),
    ),
      home: Scaffold(
        body: AppState.workerId==null ? const AuthPage() : const OnboardingsPage(),
      ),
    );
  }
}
