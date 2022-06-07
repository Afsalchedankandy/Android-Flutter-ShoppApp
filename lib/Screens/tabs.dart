import 'package:flutter/material.dart';
import 'package:userapp/Screens/Cart.dart';
import 'package:userapp/Screens/account.dart';
import 'package:userapp/Screens/home.dart';
class tabscreen extends StatefulWidget {
  const tabscreen({ Key? key }) : super(key: key);

  @override
  State<tabscreen> createState() => _tabscreenState();
}

class _tabscreenState extends State<tabscreen> {
  int _currentIndex=0;
  List _pages=[
    homepage(),
    cartpage(),
    accountpage(),
  ];
  changeIndex(selectedIndex){
   setState(() {
     _currentIndex=selectedIndex;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex,
        onTap: changeIndex,

        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "HOME"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "CART"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: "ACCOUNT")
      ],),
    );
  }
}