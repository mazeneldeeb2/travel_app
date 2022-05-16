import 'package:flutter/material.dart';
import 'package:travel_app/screens/nav_bar_screens/nav_bar_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MainScreen(),
    );
  }
}
