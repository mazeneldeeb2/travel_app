import 'package:flutter/material.dart';
import 'package:travel_app/components/places_categories_tab_bar.dart';
import 'package:travel_app/components/welcome_text_large.dart';
import 'package:travel_app/components/welcome_text_medium.dart';
import 'package:travel_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      right: 15,
                    ),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      // image: const DecorationImage(
                      //
                      // ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/mountain.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const WelcomeTextLarge(text: "Discover"),
            ),
            const SizedBox(
              height: 20,
            ),
            const PlacesCategoriesTabBar(),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  WelcomeTextLarge(
                    text: "Explore more",
                    size: 22,
                  ),
                  WelcomeTextMedium(
                    text: "see all",
                    color: mainColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
