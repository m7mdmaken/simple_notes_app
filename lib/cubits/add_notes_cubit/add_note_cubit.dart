import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simple_notes_app/cubits/add_notes_cubit/add_note_state.dart';
import 'package:simple_notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  // final NotesRepository _notesRepository;

  void addNote(NoteModel note) {
    try {
      var notesBox = Hive.box<NoteModel>('notes_box');
      notesBox.add(note);
      emit(AddNoteInitial());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
