import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userapp/Screens/Manageaddress.dart';
class addressscreen extends StatelessWidget {
  const addressscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Address") ,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Home"),
            subtitle: Text("12,Flutter Club,00000"),
            trailing: IconButton(
              icon: Icon(Icons.edit_outlined),
              onPressed: (){
                Get.to(Manageaddressscreen());
              },
            ),
            
            ),
            

          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(Manageaddressscreen());
      },child: Icon(Icons.add),),
      
    );
  }
}