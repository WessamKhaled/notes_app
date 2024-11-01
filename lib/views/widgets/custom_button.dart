
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false,});
  final void Function()? onTap;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: isLoading ? const CircularProgressIndicator(
              color: Colors.black,
            ) : const Text("Add",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            ),
          ),
        ),
      ),
    );
  }
}