import 'package:dashboard_two/views/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DashboardView(),
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
    );
  }
}
