import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomBody());
  }
}
