import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notella_cubit_cubit.dart';
import 'package:notes_app/models/Note_modele.dart';
import 'package:notes_app/view/widgets/Custom_AppBar.dart';
import 'package:notes_app/view/widgets/Custom_TexetField.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);

  final NoteModel note;
   @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          customAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotellaCubit>(context).fetchAllnotes();
              Navigator.pop(context);
            },
             title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTexetField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTexetField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subtitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          // EditNoteColorsList(
          //   note: widget.note,
          // ),
        ],
      ),
    );
  }
}
