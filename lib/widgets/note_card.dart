import 'package:flutter/material.dart';
import 'package:simple_notes_app/models/note_model.dart';
import 'package:simple_notes_app/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const AddNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(note.title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            subtitle: Text(note.note,
                style: TextStyle(color: Colors.black.withOpacity(0.5))),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.black),
              onPressed: () {
                note.delete();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32, top: 18, bottom: 18),
            child: Text(note.date.substring(0, 10),
                style: TextStyle(color: Colors.black.withOpacity(0.5))),
          )
        ]),
      ),
    );
  }
}
