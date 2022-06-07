import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Manageaddressscreen extends StatelessWidget {
  const Manageaddressscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manage Address"),),
      body:
       SingleChildScrollView(child:Column(
        children: [
          Container(child: Image.asset("assets/images/map.png",fit:BoxFit.cover,),
          height: 200,
          width: double.infinity,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
             decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: InputBorder.none,
              labelText: "Tag(eg:Home,Office)",
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
              labelText: "Name"
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
              labelText: "Mobile Number",
            ),
          ),
           SizedBox(
            height: 10.0,
          ),
           TextField(
             maxLines: 4,
             decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: InputBorder.none,
              labelText: "Address",
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
              labelText: "Mobile Number",
            ),
          ),
           Container(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
            onPressed: (){
              Get.back();
            }, child: Text("Save changes",))),
            ],
          ),)

        ],
      )
      ),
    );
  }
}