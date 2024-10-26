import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 18,
          ),
          CustomTextField(hint: 'Content',MaxLine: 5,)
        ],
      ),
    );
  }
}
