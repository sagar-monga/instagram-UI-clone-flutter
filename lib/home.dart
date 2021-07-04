import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:instagram_ui/utils/story.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: 'Add Post', icon: Icon(Icons.add_box_outlined)),
          BottomNavigationBarItem(
              label: 'Likes', icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
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
            ),
            Container(
              height: 130,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
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
            ),
          ],
        ),
      ),
    );
  }
}
