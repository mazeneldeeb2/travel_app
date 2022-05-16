import 'package:flutter/material.dart';

class PlaceTabBarView extends StatelessWidget {
  const PlaceTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(top: 20, left: 15),
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          image: const DecorationImage(
            image: AssetImage('assets/mountain.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      itemCount: 3,
    );
  }
}
