
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
        child: AddNoteForm(),
      ),
    );
  }
}




class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          SizedBox(
            height: 16,
          ),
      
          CustomTextField(
            hint: "Content",
            MaxLine: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(
            height: 26,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

