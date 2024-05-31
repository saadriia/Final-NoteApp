import 'package:flutter/material.dart';
import 'package:notes_app/models/Note_modele.dart';
import 'package:notes_app/view/widgets/editViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note : note ,
      ),
    );
  }
}
