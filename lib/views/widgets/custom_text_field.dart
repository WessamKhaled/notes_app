import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.MaxLine = 1});
  final String hint;
  final int MaxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kPrimaryColor,
        maxLines: MaxLine,
        decoration: InputDecoration(
          
            hintText: hint,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor,),

            ),
      );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
