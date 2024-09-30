import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:simple_notes_app/models/note_model.dart';
import 'package:simple_notes_app/simple_bloc_observier.dart';
import 'package:simple_notes_app/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObservier();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('notes_box');

  runApp(const SimpleNotesApp());
}

class SimpleNotesApp extends StatelessWidget {
  const SimpleNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ));
  }
}
