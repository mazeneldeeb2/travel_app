import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/models/places.dart';
import 'package:travel_app/screens/details_screen.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Places(),
      child: MaterialApp(
        routes: {
          DetailsScreen.routeName: (context) => const DetailsScreen(),
        },
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const WelcomeScreen(),
      ),
    );
  }
}
