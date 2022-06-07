import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userapp/Screens/Welcome.dart';

 void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white
      ),
      
      home:Welcomescreen()
    );
      
    
  }
}