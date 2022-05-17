import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/components/welcome_text_large.dart';
import 'package:travel_app/components/welcome_text_medium.dart';
import 'package:travel_app/constants.dart';

import '../models/places.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = '/placeDetails';
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool _isFav = false;
  @override
  Widget build(BuildContext context) {
    final placeId = ModalRoute.of(context)!.settings.arguments as int;
    final place =
        Provider.of<Places>(context, listen: false).findPlaceById(placeId);
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height: height / 2.2,
              width: double.infinity,
              child: Hero(
                tag: "place_picture ${place.id}",
                child: Image.network(
                  place.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: height / 2.8,
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white),
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WelcomeTextLarge(
                          text: place.title,
                        ),
                        WelcomeTextLarge(
                          text: '\$ ${place.price}',
                          color: mainColor,
                          size: 28,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: mainColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        WelcomeTextMedium(
                          text: place.location,
                          color: textColor1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: index < place.stars ? starColor : textColor2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const WelcomeTextLarge(
                      text: 'Description',
                      size: 25,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 12),
                        child: SingleChildScrollView(
                          child: Text(
                            place.description,
                            style: const TextStyle(
                              color: textColor2,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _isFav = !_isFav;
                            });
                          },
                          icon: _isFav
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(Icons.favorite_border),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: mainColor),
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(),
                                const Text(
                                  "Book a Trip",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.asset('assets/button-one.png')
                              ]),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
