import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: Center(
        child: Text(
          'Work In Progress ⚒💻👷🏻‍♂️',
          maxLines: 2,
          style: GoogleFonts.pacifico(
            color: Colors.white,
            fontSize: 35,
          ),
          // TextStyle(color: Colors.white, fontSize: 20,),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
