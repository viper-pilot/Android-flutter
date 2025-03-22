import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/screens/home_screens.dart';
import 'package:shop/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: HomeScreen(),
      theme: MaterialTheme(GoogleFonts.poppinsTextTheme()).light(),
      debugShowCheckedModeBanner: false,
    ),);
}
