import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 119, 176, 94),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text('Note 1',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          subtitle: Text(
              'This is a note hi my name is mohamedThis is a note hi my name is mohaThis is a note hi my name is mohamedmed',
              style: TextStyle(color: Colors.black.withOpacity(0.5))),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.black),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32, top: 18, bottom: 18),
          child: Text('may 2024',
              style: TextStyle(color: Colors.black.withOpacity(0.5))),
        )
      ]),
    );
  }
}
