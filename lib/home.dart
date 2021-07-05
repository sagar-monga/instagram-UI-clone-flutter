import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/home/post.dart';
import 'dart:math' as math;

import 'package:instagram_ui/utils/home/story.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: bottomNavBar(),
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
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.green,
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
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
