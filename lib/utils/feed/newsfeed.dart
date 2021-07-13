import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:instagram_ui/utils/feed/post.dart';
import 'package:instagram_ui/utils/feed/story.dart';


class NewsFeed extends StatelessWidget {
  const NewsFeed({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            buildAppBar(),
            SizedBox(
              height: 10,
            ),
            buildStories(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Post(
                    userImage:
                        'https://allbeststop.com/wp-content/uploads/new-insta-dp-for-boys.jpg',
                    userName: 'User 1',
                    image:
                        'https://allbeststop.com/wp-content/uploads/new-insta-dp-for-boys.jpg',
                    caption: '*Insert cool caption here*',
                    likeCount: 145,
                    commentCount: 45,
                  ),
                  Post(
                    userImage:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    userName: 'User 2',
                    image:
                        'https://images.unsplash.com/photo-1454372182658-c712e4c5a1db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
                    caption: 'Cool Scene',
                    likeCount: 23,
                    commentCount: 11,
                  ),
                  Post(
                    userImage:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    userName: 'User 5',
                    image:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    caption: 'Intro Galaxy',
                    likeCount: 17,
                    commentCount: 2,
                  ),
                  Post(
                    userImage:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    userName: 'User 3',
                    image:
                        'https://img.traveltriangle.com/blog/wp-content/uploads/2018/04/acj-1704-auckland-nighlife-3.jpg',
                    caption: 'Great Company good vibes',
                    likeCount: 34,
                    commentCount: 34,
                  ),
                  Post(
                    userImage:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    userName: 'User 2',
                    image:
                        'https://images.unsplash.com/photo-1454372182658-c712e4c5a1db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
                    caption: 'Cool Scene',
                    likeCount: 23,
                    commentCount: 11,
                  ),
                  Post(
                    userImage:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    userName: 'User 5',
                    image:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
                    caption: 'Intro Galaxy',
                    likeCount: 17,
                    commentCount: 2,
                  ),
                  Post(
                    userImage:
                        'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
                    userName: 'User 3',
                    image:
                        'https://img.traveltriangle.com/blog/wp-content/uploads/2018/04/acj-1704-auckland-nighlife-3.jpg',
                    caption: 'Great Company good vibes',
                    likeCount: 34,
                    commentCount: 34,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Row buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/instagram_logo.png',
            width: 130,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Transform.rotate(
            angle: -45 * math.pi / 180,
            child: IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
              // size: 20,
            ),
          ),
        ),
      ],
    );
  }

  Container buildStories() {
    return Container(
      height: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            buildMyStory(),
            SizedBox(
              width: 16,
            ),
            Story(
              name: 'User1',
              imageUrl:
                  'https://allbeststop.com/wp-content/uploads/new-insta-dp-for-boys.jpg',
            ),
            SizedBox(
              width: 16,
            ),
            Story(
              name: 'User 2',
              imageUrl:
                  'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
            ),
            SizedBox(
              width: 16,
            ),
            Story(
              name: 'User 3',
              imageUrl:
                  'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
            ),
            SizedBox(
              width: 16,
            ),
            Story(
              name: 'User 4',
              imageUrl:
                  'https://www.imagediamond.com/blog/wp-content/uploads/2019/11/whatsapp-dp-for-boys8.jpg',
            ),
            SizedBox(
              width: 16,
            ),
            Story(
              name: 'User 5',
              imageUrl:
                  'https://www.imagediamond.com/blog/wp-content/uploads/2019/07/hair-face-dp.jpg',
            ),
            SizedBox(
              width: 16,
            ),
            Story(
              name: 'User 6',
              imageUrl:
                  'https://www.imagediamond.com/blog/wp-content/uploads/2019/01/sad-pic-for-boys.jpg',
            ),
            SizedBox(
              width: 16,
            ),
            Story(
              name: 'User 7',
              imageUrl:
                  'https://www.imagediamond.com/blog/wp-content/uploads/2019/11/whatsapp-dp-for-boys8.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Column buildMyStory() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Stack(
            children: [
              Container(
                height: 80,
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.network(
                    'https://img.glyphs.co/img?src=aHR0cHM6Ly9zMy5tZWRpYWxvb3QuY29tL3Jlc291cmNlcy9WZWN0b3ItUG9rZW1vbi1GYWNlcy1QcmV2aWV3LTEuanBn&q=90&enlarge=true&h=1036&w=1600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 80,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}