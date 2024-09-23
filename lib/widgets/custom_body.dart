import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/custom_appbar.dart';
import 'package:simple_notes_app/widgets/note_card.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(),
          NoteCard(),
        ],
      ),
    );
  }
}
