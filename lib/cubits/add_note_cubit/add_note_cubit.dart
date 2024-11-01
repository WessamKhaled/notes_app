
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';


class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

addNote(NoteModel note)async{
  emit(AddNoteLoading());
  try {
  var notesBox = Hive.box<NoteModel>(kNotesBox);
  
  await notesBox.add(note); 
  emit(AddNoteSuccess());
} catch (e) {
  emit(AddNoteFailure(e.toString()));
}

}

}