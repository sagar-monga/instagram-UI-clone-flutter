import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key, required this.name, required this.imageUrl})
      : super(key: key);
  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: [
                Color(0xFFfeda75),
                Color(0xfffa7e1e),
                Color(0xffd62976),
                Color(0xff962fbf),
                Color(0xff4f5bd5),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
