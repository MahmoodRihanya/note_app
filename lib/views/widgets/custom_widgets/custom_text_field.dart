import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.maxline = 1,
    super.key,
    required this.hintText,
    this.onChanged,
    required this.onSaved,
  });
  Function(String)? onChanged;
  String hintText;
  void Function(String?) onSaved;
  int maxline;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is required';
        }
      },
      maxLines: maxline,
      onChanged: onChanged,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(borderColor: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? borderColor}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColor ?? Colors.white),
    );
  }
}
