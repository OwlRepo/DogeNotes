import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyListBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/emptylist.svg',
            fit: BoxFit.contain,
            height: 150.0,
            width: 150.0,
          ),
          SizedBox(
            height: 40.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: 'Oh my Doge...\n',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
              TextSpan(text: 'Why is it so empty!'),
            ]),
          ),
        ],
      ),
    );
  }
}
