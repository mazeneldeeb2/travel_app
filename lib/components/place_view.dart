import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/models/places.dart';

import '../screens/details_screen.dart';

class PlaceTabBarView extends StatelessWidget {
  const PlaceTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final places = Provider.of<Places>(context).places;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          DetailsScreen.routeName,
          arguments: places[index].id,
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 15),
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: Hero(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                places[index].image,
                fit: BoxFit.cover,
              ),
            ),
            tag: "place_picture ${places[index].id}",
          ),
        ),
      ),
      itemCount: places.length,
    );
  }
}
