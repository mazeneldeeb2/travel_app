import 'package:flutter/material.dart';
import 'package:travel_app/components/welcome_button.dart';
import 'package:travel_app/components/welcome_text_large.dart';
import 'package:travel_app/components/welcome_text_medium.dart';
import 'package:travel_app/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final List<String> _images = [
    "assets/welcome-one.png",
    "assets/welcome-two.png",
    "assets/welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) => Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                _images[index],
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: 130,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const WelcomeTextLarge(
                      text: "Trips",
                    ),
                    const WelcomeTextMedium(
                      text: "Mountain",
                      size: 32,
                    ),
                    Container(
                      width: 250,
                      margin: const EdgeInsets.only(top: 20),
                      child: const WelcomeTextMedium(
                        text:
                            "Mountain hikes give you an incredible sense of freedom strong with endurance tests.",
                        color: textColor2,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const ResponsiveButton()
                  ],
                ),
                Column(
                  children: List.generate(
                    3,
                    (indexDots) => Container(
                      width: 8,
                      height: indexDots == index ? 25 : 8,
                      margin: const EdgeInsets.only(bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: indexDots == index
                            ? mainColor
                            : mainColor.withOpacity(0.3),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        scrollDirection: Axis.vertical,
        itemCount: _images.length,
      ),
    );
  }
}
