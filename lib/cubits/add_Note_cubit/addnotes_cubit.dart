import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/Note_modele.dart';
import 'package:notes_app/view/widgets/Constants.dart';

part 'addnotes_state.dart';

class NotesCubit extends Cubit<AddNotesState> {
  NotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notsBox = Hive.box<NoteModel>(kNotesBox);
      
      await notsBox.add(note);
      emit(AddNoteSuccess());
    }   catch (e) {
      emit (AddNoteFailure(e.toString()));
      // TODO
    }
  }
}
