import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/custom_bottom_sheet.dart';
import 'package:simple_notes_app/widgets/custom_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => const CustomBottomSheet());
          },
          child: const Icon(Icons.add),
        ),
        body: const CustomBody(),
      ),
    );
  }
}
