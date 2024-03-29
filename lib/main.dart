import 'package:flutter/material.dart';
import 'package:instagram_clone/profile/profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      routes: {
        '/': (context) => ProfileScreen(),
      },
    );
  }
}

