import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({
    Key? key,
    required this.userImage,
    required this.userName,
    required this.image,
    required this.caption,
    required this.likeCount,
    required this.commentCount,
  }) : super(key: key);

  final String userImage;
  final String userName;
  final String image;
  final String caption;
  final int likeCount;
  final int commentCount;

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _isLiked = false;
  bool _isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        buildUserDetails(),
        SizedBox(height: 10),
        Container(
          height: _size.width,
          width: _size.width,
          child: Image.network(
            widget.image,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        _actionRow(),
        SizedBox(height: 5),
        _likesLine(),
        SizedBox(height: 5),
        _captionDisplay(),
        SizedBox(height: 3),
        _commentLine(),
        SizedBox(height: 15),
      ],
    );
  }

  Padding _likesLine() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            widget.likeCount.toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Text(
            ' likes',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Padding _commentLine() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            'View all ',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
          Text(
            widget.commentCount.toString(),
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
          Text(
            ' comments',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Padding _captionDisplay() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            widget.userName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            widget.caption,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Row _actionRow() {
    return Row(
      children: [
        _isLiked
            ? IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.favorite,
                  size: 35,
                ),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _isLiked = !_isLiked;
                  });
                },
              )
            : IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.favorite_outline,
                  size: 35,
                ),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _isLiked = !_isLiked;
                  });
                },
              ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/comment.png',
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/dm.png',
            color: Colors.white,
          ),
        ),
        Spacer(),
        _isBookmarked
            ? IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.bookmark,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _isBookmarked = !_isBookmarked;
                  });
                },
              )
            : IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.bookmark_border,
                  size: 35,
                ),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _isBookmarked = !_isBookmarked;
                  });
                },
              ),
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
                widget.userImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          widget.userName,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
