import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteify/Constants/NoteifyColors.dart';
import 'package:noteify/Routes/Walkthrough.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashscreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Get.toNamed(Walkthrough.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: NoteifyColors.darkGrey,
        ),
        child: Center(
          child: Text(
            'DogeNotes',
            style: GoogleFonts.pressStart2p(
              color: NoteifyColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
