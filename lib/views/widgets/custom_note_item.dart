
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        },),);
      },
      child: Container(
        padding: EdgeInsets.only(top: 20,bottom: 20,left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          
          children: [
            ListTile(
      
              title: Text(note.title
              ,style: TextStyle(
                color: Colors.black,
                fontSize: 30
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(note.subTitle,style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 20
                ),),
              ),
              trailing: IconButton(onPressed: () {
                note.delete();
              }, icon: const Icon(Icons.delete,
               color: Colors.black,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date, 
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
