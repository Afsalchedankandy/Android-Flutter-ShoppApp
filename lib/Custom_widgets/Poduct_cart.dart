import 'dart:math';

import 'package:flutter/material.dart';
class productcart extends StatelessWidget {
   productcart({ Key? key,required this.imageUrl,required this.Title,required this.Price }) : super(key: key);
  String? imageUrl;
  String ? Title;
  double? Price;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Align(child: Container(
          height: double.infinity,
           width: double.infinity,
          child: Image.asset("$imageUrl",fit: BoxFit.fitHeight,),
        ),
        ),
        Align(
          child: Container(
            padding: EdgeInsets.only(left: 4.0,right: 4.0),
            alignment: Alignment.bottomCenter,
            color: Colors.black.withOpacity(0.4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Text("$Title",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text("$Price",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ))
                  ],),
                ),
                Container(
                  child: ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
                )
              ],
            ),
          ),
        )
      ],),
    );
  }
}