import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.favouritIcon,
  });
  final String title;
  final IconData icon;
  final IconData favouritIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontSize: 30)),
        Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomIcon(icon: favouritIcon),
        ),
        CustomIcon(icon: icon),
      ],
    );
  }
}
