import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:simple_notes_app/widgets/custom_bottom_sheet.dart';
import 'package:simple_notes_app/widgets/custom_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const CustomBottomSheet());
            },
            child: const Icon(Icons.add),
          ),
          body: const CustomBody(),
        ),
      ),
    );
  }
}
