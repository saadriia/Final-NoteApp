import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Observer/Simple_Block_observer.dart';
import 'package:notes_app/cubits/add_Note_cubit/addnotes_cubit.dart';
import 'package:notes_app/models/Note_modele.dart';
import 'package:notes_app/view/widgets/Constants.dart';
//import 'package:notes_app/view/Nots_view.dart';

import 'view/Nots_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
    Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Bentham',
      ),
      home: const NotsView(),
    );
  }
}
