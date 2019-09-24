import 'package:fashapp/product_widgets/Cart_Products.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Cart",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white
          
        ),),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
          onPressed: (){
            
          },

      ),

      ],

      

        
        
        ),

        body: CartProducts(),

        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: Text(
                    "Total: "
                  ),
                  subtitle: Text(
                    "\$230"
                  ),
                  
                ),
              ),

              Expanded(
                child: MaterialButton(
                  color: Colors.red,
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    
                  ),
                  onPressed: (){},
                ),

              )
            ],
          ),
        ),

        
      
    );
  }
}

