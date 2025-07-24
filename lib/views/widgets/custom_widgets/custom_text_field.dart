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
  });
  Function(String)? onChanged;
  String hintText;

  int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      onChanged: onChanged,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kprimaryColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(borderColor: kprimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? borderColor}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColor ?? Colors.white),
    );
  }
}
