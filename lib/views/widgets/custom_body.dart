import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [SizedBox(height: 40), CustomAppBar()]),
    );
  }
}
