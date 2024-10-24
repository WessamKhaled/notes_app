
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20,bottom: 20,left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        
        children: [
          ListTile(

            title: const Text("Flutter Tips",style: TextStyle(
              color: Colors.black,
              fontSize: 30
            ),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text("build your career with me build your career with me",style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 20
              ),),
            ),
            trailing: IconButton(onPressed: () {
              
            }, icon: const Icon(Icons.delete,
             color: Colors.black,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("May21 , 2022", 
            style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 16
              ),
            ),
          )
        ],
      ),
    );
  }
}
