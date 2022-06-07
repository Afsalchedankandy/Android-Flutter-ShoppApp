import 'package:flutter/material.dart';
import 'package:userapp/Custom_widgets/Cartitem.dart';

class cartpage extends StatelessWidget {
  @override
  
  List _cartItems = [
    {
      "imageURL": "assets/images/products/1.jpg",
      "title": "Carrot",
      "qty": 1,
      "price": 200.0,
      "total": 200.0,
    },
    {
      "imageURL": "assets/images/products/5.jpg",
      "title": "Raw Meat",
      "qty": 2,
      "price": 320.0,
      "total": 640.0,
    },
    {
      "imageURL": "assets/images/products/8.jpg",
      "title": "Orange",
      "qty": 1,
      "price": 170.0,
      "total": 170.0,
    }
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Cart"),
      ),
      body:Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
              itemCount:_cartItems.length,
              itemBuilder: (bc,index){
                return cartitems(
                  imageURL: _cartItems[index]["imageURL"],
                  title: _cartItems[index]["title"],
                  qty: _cartItems[index]["qty"],
                  price: _cartItems[index]["price"],
                  total: _cartItems[index]["total"],
                );
              }
              )
              ),
            ListTile(
              title: Text("Delivery Address"),
            subtitle: Text("13,Flutter club,Earth -0002"),
            trailing: TextButton(
              child: Text("Change"),
              onPressed: (){},
            ),
            ),
                ListTile(
              title: Text("Payment method"),
            subtitle: Text("Cash on Delivery"),
            trailing: TextButton(
              child: Text("Change"),
              onPressed: (){},
            ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                ),
                child: Text("Checkout(RS 830)"),
                onPressed: (){},
              ),
            )
          ],
        ),
      ) ,
      
    );
  }
}