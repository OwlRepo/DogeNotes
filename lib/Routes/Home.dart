import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteify/Constants/NoteifyColors.dart';
import 'package:noteify/Data/Dynamic/NotesListData.dart';
import 'package:noteify/Widgets/Home/EmptyListBanner.dart';
import 'package:noteify/Widgets/Home/GreetingsBottomSheet.dart';
import 'package:noteify/Widgets/Home/NotesGridListContainer.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    //Ensure that widget is done building before showing the bottom sheet
    //unless it will case an error.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.bottomSheet(GreetingsBottomSheet());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 30.0,
          color: NoteifyColors.lightMint,
        ),
        backgroundColor: NoteifyColors.lightGrey,
        tooltip: 'Create new note',
        onPressed: () {},
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: NoteifyColors.darkGrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: NoteifyColors.lightMint,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              NotesGridListContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
