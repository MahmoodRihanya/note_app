import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 18),
          CustomTextField(maxline: 5, hintText: 'content'),
          Spacer(flex: 1),
          CustomButton(ontap: () {}, text: 'add note'),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
