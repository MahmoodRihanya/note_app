import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            trailing: const Icon(FontAwesomeIcons.trash, color: Colors.black),
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Build your career with tharwat samy',
                style: TextStyle(
                  color: Colors.black.withAlpha(150),
                  fontSize: 22,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              '22/5/2009',
              style: TextStyle(
                color: Colors.black.withAlpha(150),
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
