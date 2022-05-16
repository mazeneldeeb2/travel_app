import 'package:flutter/material.dart';
import 'package:travel_app/components/place_view.dart';

import '../constants.dart';

class PlacesCategoriesTabBar extends StatefulWidget {
  const PlacesCategoriesTabBar({Key? key}) : super(key: key);

  @override
  State<PlacesCategoriesTabBar> createState() => _PlacesCategoriesTabBarState();
}

class _PlacesCategoriesTabBarState extends State<PlacesCategoriesTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TabController _tabController = TabController(
      length: 3,
      vsync: this,
    );

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: const EdgeInsets.only(left: 0),
            indicatorColor: mainColor,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'Places',
              ),
              Tab(
                text: 'Inspiration',
              ),
              Tab(
                text: 'Emotions',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: TabBarView(
            controller: _tabController,
            children: const [
              PlaceTabBarView(),
              PlaceTabBarView(),
              PlaceTabBarView(),
            ],
          ),
        )
      ],
    );
  }
}
