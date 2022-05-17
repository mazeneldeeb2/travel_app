import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/components/explore_more_list_view.dart';
import 'package:travel_app/components/places_categories_tab_bar.dart';
import 'package:travel_app/components/welcome_text_large.dart';
import 'package:travel_app/components/welcome_text_medium.dart';
import 'package:travel_app/constants.dart';

import '../models/places.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Provider.of<Places>(context, listen: false).getPlaces();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final places = Provider.of<Places>(context).places;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: Container(
          padding: const EdgeInsets.only(top: 10, left: 7),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const ExploreMoreListView(),
          ],
        ),
      ),
    );
  }
}
