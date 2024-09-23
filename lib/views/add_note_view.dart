import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/custom_appbar.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: CustomAppBar(
            title: 'Add Note',
            icon: Icons.add,
          ),
        ),
      ),
    );
  }
}
