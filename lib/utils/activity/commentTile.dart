import 'package:flutter/material.dart';

class CommentTile extends StatefulWidget {
  const CommentTile(
      {Key? key,
      required this.dpUrl,
      required this.comment,
      required this.username})
      : super(key: key);
  final String dpUrl;
  final String username;
  final String comment;

  @override
  _CommentTileState createState() => _CommentTileState();
}

//TODO: Make time dynamic as well, if time left then try to save state of the widget in sharedprefs
class _CommentTileState extends State<CommentTile> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              widget.dpUrl,
            ),
          ),
        ),
        title: Text(
          '${widget.username} liked your comment on their picture \"${widget.comment}\"',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: _isLiked
            ? IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 16,
                ),
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
                  color: Colors.white70,
                  size: 16,
                ),
                onPressed: () {
                  setState(() {
                    _isLiked = !_isLiked;
                  });
                },
              ),
        subtitle: Text(
          '5 min ago',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 16),
        ),
        isThreeLine: true,
      ),
    );
  }
}
