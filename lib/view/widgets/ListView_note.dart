import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notella_cubit_cubit.dart';
import 'package:notes_app/models/Note_modele.dart';
import 'package:notes_app/view/widgets/costum_NoteItems.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotellaCubit, NotellaState>(
      builder: (context, state) {
            List<NoteModel> notella =BlocProvider.of<NotellaCubit>(context).notes!;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          itemCount: notella.length ,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(
                  note: notella[index],

                ),
              );
            }),
      );
    });
  }
}
