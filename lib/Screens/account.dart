import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userapp/Screens/Orders.dart';
import 'package:userapp/Screens/address.dart';
import 'package:userapp/Screens/profile.dart';
class accountpage extends StatelessWidget {
  const accountpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Account"),),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png"),),
            title:Text ("Afsal"),
            subtitle: Text("+919048343589"),
            trailing: TextButton(child: Text("Edit"),
            onPressed: (){
              Get.to(profile());
            },
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications_active_outlined),
            title:Text ("Notification"),
            subtitle: Text("Turn ON/OFF notification"),
            trailing: Switch(value: true,
            onChanged: (i){},
            )
            ),
          ListTile(
            onTap: (){
              Get.to(addressscreen());
            },
            leading: Icon(Icons.shopping_bag_outlined),
            title:Text ("Myaddress"),
            subtitle: Text("Managae My address"),
            trailing: Icon(Icons.arrow_forward
            )
            ),
          ListTile(
            onTap: (){
              Get.to(Orderscren());
            },
            
            leading: Icon(Icons.shopping_bag_outlined),
            title:Text ("Myorders"),
            subtitle: Text("Managae My Orders"),
            trailing: Icon(Icons.arrow_forward
            )
            ),
        ],

      ),
    );
  }
}