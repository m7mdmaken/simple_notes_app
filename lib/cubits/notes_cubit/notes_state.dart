part of 'notes_cubit.dart';

sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoaded extends NotesState {
  final List<NoteModel> notes;
  NotesLoaded({required this.notes});
}

final class NotesLoading extends NotesState {}

final class NotesError extends NotesState {
  final String message;
  NotesError({required this.message});
}
