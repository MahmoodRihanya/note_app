import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_body.dart';
import 'package:notes_app/views/widgets/floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
