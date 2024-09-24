class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMessage;
  AddNoteFailure(this.errMessage);
}

class AddNoteSuccess extends AddNoteState {}
