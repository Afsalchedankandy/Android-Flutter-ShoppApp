import 'package:flutter/material.dart';
import 'package:get/get.dart';
class profile extends StatelessWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Edit Account",style: TextStyle(color: Colors.green,),) ,backgroundColor: Colors.white,
      elevation: 0,
     iconTheme:IconThemeData(color: Colors.green) ,
      
      ),
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png"),
          radius: 60,
          
          ),
           TextField(
             decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: InputBorder.none,
              labelText: "Full Name",
            ),
          ),
           SizedBox(
            height: 10.0,
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: InputBorder.none,
              labelText: "Email"
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
             decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: InputBorder.none,
              labelText: "Password",
            ),
          ),
           SizedBox(
            height: 10.0,
          ),
           TextField(
             decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: InputBorder.none,
              labelText: "Phone",
            ),
          ),
           SizedBox(
            height: 10.0,
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
            onPressed: (){
              Get.back();
            }, child: Text("Save Changes",))),
          
         
        ],
      ),),
      
    );
  }
}