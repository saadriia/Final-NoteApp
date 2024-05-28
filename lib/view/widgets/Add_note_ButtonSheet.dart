// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_Note_cubit/addnotes_cubit.dart';
import 'package:notes_app/view/widgets/Constants.dart';
import 'package:notes_app/view/widgets/Custom_TexetField.dart';

import 'AddNote_form.dart';
import 'custom_Button.dart';

class AddNoteButtonSheat extends StatefulWidget {
  const AddNoteButtonSheat({super.key});

  @override
  State<AddNoteButtonSheat> createState() => _AddNoteButtonSheatState();
}

class _AddNoteButtonSheatState extends State<AddNoteButtonSheat> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<NotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('لم يتم الحفظ ${state.errMssage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
