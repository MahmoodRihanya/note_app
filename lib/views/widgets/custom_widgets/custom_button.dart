import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({required this.ontap, required this.text});
  String text;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
