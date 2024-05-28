//import 'package:clothes_market/view/widgets/Nots_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notella_cubit_cubit.dart';
//import 'package:notes_app/view/widgets/Nots_view_body.dart';

import 'widgets/Add_note_ButtonSheet.dart';
import 'widgets/Nots_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              context: context,
              builder: (context) {
                return const AddNoteButtonSheat();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
