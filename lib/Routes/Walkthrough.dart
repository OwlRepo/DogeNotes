import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:noteify/Constants/NoteifyColors.dart';
import 'package:noteify/Data/Local/OnboardingScreenData.dart';
import 'package:noteify/Routes/Home.dart';

class Walkthrough extends StatefulWidget {
  static const routeName = '/walkthrough';
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: NoteifyColors.darkGrey,
          ),
          child: IntroductionScreen(
            pages: OnBoardingScreenData.pageViewList,
            globalBackgroundColor: NoteifyColors.darkGrey,
            dotsDecorator: DotsDecorator(
              color: Colors.black,
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.white,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            showNextButton: false,
            next: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text('Next'),
              onPressed: () {},
            ),
            showDoneButton: true,
            done: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text('Done'),
              onPressed: () {
                Get.toNamed(Home.routeName);
              },
            ),
            onDone: () {
              Get.toNamed(Home.routeName);
            },
            skip: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text('Skip'),
              onPressed: () {},
            ),
            showSkipButton: false,
          ),
        ),
      ),
    );
  }
}
