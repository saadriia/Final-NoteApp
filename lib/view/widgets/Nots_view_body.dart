import "package:flutter/material.dart";
import "package:notes_app/cubits/notes_cubit/notella_cubit_cubit.dart";
import "package:notes_app/view/widgets/ListView_note.dart";
//import "package:font_awesome_flutter/font_awesome_flutter.dart";
//import "package:notes_app/view/widgets/costum_NoteItems.dart";
//import "package:notes_app/view/widgets/Custom_AppBar.dart";
import "Custom_AppBar.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotellaCubit>(context).fetchAllnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          customAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NotsListView(),
          ),
        ],
      ),
    );
  }
}
