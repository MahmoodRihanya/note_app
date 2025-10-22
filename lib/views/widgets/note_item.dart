import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatefulWidget {
  const NoteItem({super.key});

  @override
  State<NoteItem> createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  Color iconColor = Color(0xffFFCC80);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
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
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      if (iconColor == Colors.red)
                        setState(() {
                          iconColor = Color(0xffFFCC80);
                        });
                      else {
                        setState(() {
                          iconColor = Colors.red;
                        });
                      }
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: iconColor,
                      size: 34,
                      shadows: List.generate(
                        10,
                        (index) => Shadow(
                          blurRadius: 3,
                          color: Theme.of(context).canvasColor,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '22/5/2009',
                    style: TextStyle(
                      color: Colors.black.withAlpha(150),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
