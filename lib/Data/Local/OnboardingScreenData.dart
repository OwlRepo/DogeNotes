import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:noteify/Constants/NoteifyColors.dart';

class OnBoardingScreenData {
  static List<PageViewModel> pageViewList = [
    PageViewModel(
      title: "Cross Platform\nApplication",
      body:
          "You can add, edit, and view your notes in your Browser, Mobile Phone, and Desktop.",
      image: Image.asset('assets/images/dogeface_outline.png'),
      decoration: PageDecoration(
        titleTextStyle: GoogleFonts.raleway(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
        bodyTextStyle: GoogleFonts.raleway(
          color: Colors.white,
          fontSize: 15.0,
        ),
        pageColor: NoteifyColors.darkGrey,
      ),
    ),
    PageViewModel(
      title: "No Internet\nNo Problem",
      body:
          "You can still add new notes and update it even without an internet. It will automatically sync once your internet connection is back.",
      image: Image.asset('assets/images/dogeface_outline.png'),
      decoration: PageDecoration(
        titleTextStyle: GoogleFonts.raleway(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
        bodyTextStyle: GoogleFonts.raleway(
          color: Colors.white,
          fontSize: 15.0,
        ),
        pageColor: NoteifyColors.darkGrey,
      ),
    ),
    PageViewModel(
      title: 'Account Creation\nNot Required',
      body:
          "DogeNotes is still the best option if you dont want to create an account and only want a few notes on a single device.",
      image: Image.asset('assets/images/dogeface_outline.png'),
      decoration: PageDecoration(
        titleTextStyle: GoogleFonts.raleway(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
        bodyTextStyle: GoogleFonts.raleway(
          color: Colors.white,
          fontSize: 15.0,
        ),
        pageColor: NoteifyColors.darkGrey,
      ),
    ),
  ];
}
