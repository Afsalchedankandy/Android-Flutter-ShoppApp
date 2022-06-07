import 'package:flutter/material.dart';
class cartitems extends StatelessWidget {
  String? imageURL;
  String? title;
  int? qty;
  double? price;
  double? total;
  cartitems({required this.imageURL,required this.title,required this.qty,required this.price,required this.total});
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          Container(child: Image.asset("$imageURL",height: 90,width: 90,),),
           SizedBox(
            width:10,
          ),
          Container(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$title",style: TextStyle(fontSize: 12,),),
              Text("Qty $qty  x RS $price"),
              ],
          ),),
          Container(
            child: Row(
              children: [
              RawMaterialButton(
                fillColor: Colors.green,
                elevation: 0,
                padding: EdgeInsets.all(4.0),
                child:Icon(Icons.remove,color:Colors.white,size: 16,),
                onPressed: (){},
                shape: CircleBorder(),
                constraints: BoxConstraints(),
                ),
              Text("$qty"),
                     SizedBox(
                     width:5,
                     ),
              RawMaterialButton(
                fillColor: Colors.green,
                elevation: 0,
                padding: EdgeInsets.all(4.0),
                child:Icon(Icons.add,color:Colors.white,size: 16,),
                onPressed: (){},
                shape: CircleBorder(),
                constraints: BoxConstraints(),
              ),
              ],
            ),
          ),
         
          Container(child: Text("RS $total"),),

        ],
      )
      
    );
  }
}