import 'package:flutter/material.dart';
class WelcomeSlider extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  WelcomeSlider({Key? key,  required this.image, required this.title, required this.subtitle}): super(key: key);
    @override
  Widget build(BuildContext context) {
    return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset(
                  image,
                  scale: 1.0,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "$title",
                    style:TextStyle (fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                   SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "$subtitle",
                    style:TextStyle (fontSize: 12,fontWeight: FontWeight.bold),
                    ),
                ],
              ),
            );
  }
}