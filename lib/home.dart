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
  final List<bool> _selectionStatus = [
    true,
    false,
    false,
    false,
    false,
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
        BottomNavigationBarItem(
            label: 'Home',
            icon: _selectionStatus[0]
                ? Icon(Icons.home_filled)
                : Icon(Icons.home_outlined)),
        BottomNavigationBarItem(
            label: 'Search',
            icon: _selectionStatus[1]
                ? Icon(Icons.search_sharp)
                : Icon(Icons.search)),
        BottomNavigationBarItem(
            label: 'Add Post', icon: Icon(Icons.add_box_outlined)),
        BottomNavigationBarItem(
            label: 'Likes',
            icon: _selectionStatus[3]
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
        BottomNavigationBarItem(
            label: 'Profile',
            icon: _selectionStatus[4]
                ? Icon(Icons.person)
                : Icon(Icons.person_outline)),
      ],
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      _setAllFalse();
      _selectionStatus[index] = true;
    });
  }

  void _setAllFalse() {
    _selectionStatus[0] = false;
    _selectionStatus[1] = false;
    _selectionStatus[3] = false;
    _selectionStatus[4] = false;
  }
}
