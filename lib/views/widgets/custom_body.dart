import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

import 'package:notes_app/views/widgets/notes_list_view.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(),
          Expanded(child: NotesList()),
        ],
      ),
    );
  }
}
