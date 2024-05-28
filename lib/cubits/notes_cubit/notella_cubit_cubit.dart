import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/Note_modele.dart';

import '../../view/widgets/Constants.dart';

part 'notella_cubit_state.dart';

class NotellaCubit extends Cubit<NotellaState> {
  NotellaCubit() : super(NotellaInitial());

  List<NoteModel>? notes;
  fetchAllnotes() {
    var notsBox = Hive.box<NoteModel>(kNotesBox);

      notes = notsBox.values.toList();
  }
}
