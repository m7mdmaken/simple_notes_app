import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:simple_notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:simple_notes_app/cubits/add_notes_cubit/add_note_state.dart';
import 'package:simple_notes_app/widgets/add_note_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 48, left: 20, right: 20),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              } else if (state is AddNoteFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errMessage),
                  ),
                );
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: (state is AddNoteLoading),
                child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [AddNoteForm()]),
              );
            },
          ),
        ),
      ),
    );
  }
}
