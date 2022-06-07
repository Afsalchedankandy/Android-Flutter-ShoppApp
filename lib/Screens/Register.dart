import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userapp/Screens/login.dart';
class Registerscreen extends StatelessWidget {
  const Registerscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Create an Account",style: TextStyle(color: Colors.green,),) ,backgroundColor: Colors.white,
      elevation: 0,
     iconTheme:IconThemeData(color: Colors.green) ,
      
      ),
      
      
      
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/app-icon.png",height: 120,width: 120,),
           SizedBox(
            height: 20.0,
          ),
          Text("Grocerry Shop",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
           SizedBox(
            height: 20.0,
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
            onPressed: (){}, child: Text("Register",))),
          Container(child: TextButton(onPressed: (){
            Get.to(login());
          }, child: Text("Already Registerd?")),),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation:0),
              onPressed:(){},child:Image.asset("assets/images/fb-icon.png",height: 32)),
            SizedBox(
              height: 4.0,  
              width: 4.0,
            ),
            ElevatedButton(
               style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0),
              onPressed:(){},child: Image.asset("assets/images/google-icon.png",height: 32)),
          ],),),
        ],
      ),),
      
    );
  }
}