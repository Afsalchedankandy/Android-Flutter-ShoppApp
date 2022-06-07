import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userapp/Custom_widgets/Welcome_slider.dart';
import 'package:userapp/Screens/login.dart';
class Welcomescreen extends StatelessWidget {
  const Welcomescreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(child: Column(children: [
        Expanded(child: Container(
          child: CarouselSlider(
          options: CarouselOptions(
            height: double.infinity
          ),
          items: [
            WelcomeSlider(
              image:"assets/images/slide_1.png",
              title:"Fast Delevery dont'wait to much",
              subtitle:"Dont wait to much"
            ),
            WelcomeSlider(
              image:"assets/images/slide_2.png",
              title:"Eat healthy, live better",
              subtitle:"Taste that best, its on time"
            ),
            WelcomeSlider(
              image:"assets/images/slide_3.png",
              title:"Eat good, do good",
              subtitle:"You are what you eat, so eat right."
            ),
          ],  
          ),
          

        )),
        Container(
          height: 80,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            onPressed: (){
              Get.to(login());
            }, child: Text("Getting Started",style:TextStyle(fontWeight: FontWeight.bold))),)
      ],),),
    );
  }
}