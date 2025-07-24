import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return AddNoteBottomSheet();
          },
        );
      },
      child: CircleAvatar(
        backgroundColor: kprimaryColor,
        radius: 30,
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
