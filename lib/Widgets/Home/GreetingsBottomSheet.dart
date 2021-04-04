import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteify/Constants/NoteifyColors.dart';

class GreetingsBottomSheet extends StatefulWidget {
  @override
  _GreetingsBottomSheetState createState() => _GreetingsBottomSheetState();
}

class _GreetingsBottomSheetState extends State<GreetingsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: NoteifyColors.darkGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Text(
              'Be more productive 👋',
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Text(
              'Create your account now and use DogeNotes anytime anywhere 💻 📱 🖥️',
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80.0,
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(
                          20.0,
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Create an account'),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80.0,
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(
                          20.0,
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
