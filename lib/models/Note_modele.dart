// ignore_for_file: file_names

import 'package:hive/hive.dart';

part 'Note_modele.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(1)
    String title;
  @HiveField(2)
    String subtitle;
  @HiveField(3)
  final String date;
  @HiveField(4)
    int color;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
