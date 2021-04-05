import 'package:flutter/material.dart';
import 'package:noteify/Data/Dynamic/NotesListData.dart';

import 'EmptyListBanner.dart';

class NotesGridListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: NotesListData.fetchedDataList.length == 0
            ? EmptyListBanner()
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 2,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                ),
                itemCount: NotesListData.fetchedDataList.length,
                itemBuilder: (context, index) {
                  return Text(NotesListData.fetchedDataList[index].title);
                },
              ),
      ),
    );
  }
}
