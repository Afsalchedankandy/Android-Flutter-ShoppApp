import 'package:flutter/material.dart';
class orderdetails extends StatelessWidget {
  

  Map orderObj;
  orderdetails({required this.orderObj});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(title: Text("#${orderObj["id"]}-${orderObj["status"]}"),),
    body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text("Order"),
            subtitle: Text("${orderObj["dateString"]}"),
            trailing: Text("#${orderObj["id"]}"),
          ),
            ListTile(
            title: Text("status"),
            subtitle: Text("${orderObj["status"]}"),
          ),
            ListTile(
            title: Text("delivery"),
            subtitle: Text("${orderObj["dateString"]}"),
            trailing: Text("${orderObj["paymentMethod"]}"),
          ),
          Container(
            margin: EdgeInsets.only(top: 8,bottom: 8),
            padding: EdgeInsets.only(left:12),
            child:Text("CART ITEMS",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),)
          ),
          Expanded(child: ListView.builder(
            itemCount: orderObj["cartItems"].length,
            itemBuilder: (bc,index){
              return ListTile(
                title:Text("${orderObj["cartItems"][index]["title"]}") ,
                subtitle: Text("Qty:${orderObj["cartItems"][index]["qty"]}x${orderObj["cartItems"][index]["price"]}"),
                trailing: Text("Total${orderObj["cartItems"][index]["total"]}"),
              );
            }

          )),
          Container(
            padding: EdgeInsets.only(left:12,right: 12),
            color: Colors.green,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("TOTAL", style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.white,fontSize:16
              ),),Text("${orderObj["cartTotal"]}",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.white,fontSize:16,
              ),),
              ],
            ),
              
          )

        ],
      ),
    )
    );
  }
}