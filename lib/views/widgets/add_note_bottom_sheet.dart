import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AddNote();
  }
}

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: autovalidateMode,
          key: formKey,
          child: Column(
            children: [
              CustomTextField(
                hintText: 'Title',
                onSaved: (data) {
                  title = data;
                },
              ),
              const SizedBox(height: 18),
              CustomTextField(
                maxline: 6,
                hintText: 'content',
                onSaved: (data) {
                  content = data;
                },
              ),
              const SizedBox(height: 32),
              CustomButton(
                text: 'Add',
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
