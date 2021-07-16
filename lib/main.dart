import 'package:flutter/material.dart';
import 'package:instagram_ui/home.dart';
import 'package:instagram_ui/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme(),
      home: HomeScreen(),
    );
  }
}
