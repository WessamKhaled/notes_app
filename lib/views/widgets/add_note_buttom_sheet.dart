
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 27,vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 16,
            ),
        
            CustomTextField(
              hint: "Content",
              MaxLine: 5,
            ),
            SizedBox(
              height: 26,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

