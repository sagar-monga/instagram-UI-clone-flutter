import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/activity/commentTile.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topBar(),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  _followRequests(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      "Your Activity",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                  CommentTile(
                    comment: 'Looking 🔥',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    username: '_alpha.pvt',
                  ),
                  CommentTile(
                    comment: 'That view! 😍😍',
                    dpUrl:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    username: 'sash.2812',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile _followRequests() {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.glyphs.co/img?src=aHR0cHM6Ly9zMy5tZWRpYWxvb3QuY29tL3Jlc291cmNlcy9WZWN0b3ItUG9rZW1vbi1GYWNlcy1QcmV2aWV3LTEuanBn&q=90&enlarge=true&h=1036&w=1600'),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    '45',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      title: Text(
        'Follow Requests',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        'Approve or ignore requests',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
    );
  }

  Container _topBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      height: 50,
      child: Text(
        'Activity',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
