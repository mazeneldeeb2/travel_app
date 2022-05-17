import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class ExploreMoreListView extends StatelessWidget {
  const ExploreMoreListView({Key? key}) : super(key: key);
  static const List<String> _iconsPictures = [
    "assets/kayaking.png",
    "assets/snorkling.png",
    "assets/balloning.png",
    "assets/hiking.png",
  ];
  static const List<String> _iconsTitle = [
    'Kayaking',
    'Snorkling',
    'Balloning',
    'Hiking',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  _iconsPictures[index % 4],
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                _iconsTitle[index % 4],
                style: const TextStyle(
                  color: textColor2,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
