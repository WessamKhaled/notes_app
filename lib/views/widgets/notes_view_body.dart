
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

import 'custom_app_bar.dart';
import 'custom_note_item.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});
  

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
@override
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );

  }
}


