import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/activity/activity.dart';
import 'package:instagram_ui/utils/create/create.dart';
import 'package:instagram_ui/utils/explore/explore.dart';
import 'package:instagram_ui/utils/feed/newsfeed.dart';
import 'package:instagram_ui/utils/profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> _children = [
    NewsFeed(),
    Explore(),
    CreatePost(),
    Activity(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: bottomNavBar(),
        body: _children[currentIndex]);
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      onTap: _onTabTapped,
      currentIndex: currentIndex,
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

  void _onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
