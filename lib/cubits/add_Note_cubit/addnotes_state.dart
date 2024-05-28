part of 'addnotes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNoteLoading extends AddNotesState {}

final class AddNoteSuccess extends AddNotesState {}

final class AddNoteFailure extends AddNotesState {
  final String errMssage;

  AddNoteFailure( this.errMssage);
}
//حالات التطبيق نجحت فشلت بيحمل تحديد
//بناء اللوجيك
// بروفيد الكيوبيت 
// بدء الاستخدام 
