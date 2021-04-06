import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteify/Routes/AccountSettings.dart';
import 'package:noteify/Routes/AccountSetup.dart';
import 'package:noteify/Routes/AppSettings.dart';
import 'package:noteify/Routes/Home.dart';
import 'package:noteify/Routes/NewNote.dart';
import 'package:noteify/Routes/SplashScreen.dart';
import 'package:noteify/Routes/UpdateNote.dart';
import 'package:noteify/Routes/Walkthrough.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DogeNotes',
      debugShowCheckedModeBanner: true,
      initialRoute: SplashScreen.routeName,
      getPages: [
        GetPage(name: SplashScreen.routeName, page: () => SplashScreen()),
        GetPage(name: Walkthrough.routeName, page: () => Walkthrough()),
        GetPage(name: AccountSetup.routeName, page: () => AccountSetup()),
        GetPage(
          name: Home.routeName,
          page: () => Home(),
        ),
        GetPage(
          name: NewNote.routeName,
          page: () => NewNote(),
          transition: Transition.rightToLeft,
        ),
        GetPage(name: UpdateNote.routeName, page: () => UpdateNote()),
        GetPage(name: AccountSettings.routeName, page: () => AccountSettings()),
        GetPage(name: AppSettings.routeName, page: () => AppSettings()),
      ],
    );
  }
}
