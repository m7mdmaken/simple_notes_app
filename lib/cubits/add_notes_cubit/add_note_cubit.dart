import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_notes_app/cubits/add_notes_cubit/add_note_state.dart';
import 'package:simple_notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  // final NotesRepository _notesRepository;

  void addNote(NoteModel note) {}
}
