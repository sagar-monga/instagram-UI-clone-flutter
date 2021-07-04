import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post(
      {Key? key,
      required this.userImage,
      required this.userName,
      required this.image})
      : super(key: key);

  final String userImage;
  final String userName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildUserDetails(),
      ],
    );
  }

  Row buildUserDetails() {
    return Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  userImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            userName,
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      );
  }
}
