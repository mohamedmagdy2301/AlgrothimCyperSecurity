import 'package:flutter/material.dart';
import 'Screens/home_view.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cyber Algorithms',
        home: HomeView()
        // HomeView(),
        );
  }
}
