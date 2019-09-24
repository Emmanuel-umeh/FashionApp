import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {

  var Products_On_Cart = [
     {
      "name": "Blazer",
      "picture": 'assets/products/product4.jpg',
   
      "price": 2000,
      "size " : "L",
      "color" : "Red",
      "quantity": 1
    },

    {
      "name": "Casual",
      "picture": 'assets/products/product5.jpg',
      
      "price": 1200,
      "size " : "L",
      "color" : "Grey",
      "quantity": 1
    },

    {
      "name": "Gown",
      "picture": 'assets/products/product6.jpg',
    
      "price": 4000,
      "size " : "L",
      "color" : "White",
      "quantity": 2
    },


    {
      "name" : "Design",
      "picture" : 'assets/products/product2.jfif',
      
      "price " : 5000,
      "size " : "M",
      "color" : "blue",
      "quantity": 5
    }
  ];

  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      itemCount: Products_On_Cart.length,
      itemBuilder: (context, index){
        return Single_Cart_Product(
          cart_prod_name : Products_On_Cart[index]["name"],
          cart_prod_color : Products_On_Cart[index]["color"],
          cart_prod_picture : Products_On_Cart[index]["picture"],
          cart_prod_size : Products_On_Cart[index]["size"],
          cart_prod_quantity : Products_On_Cart[index]["quantity"],
          cart_prod_price : Products_On_Cart[index]["price"]
        );
      },
    );
  }
}

class Single_Cart_Product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  // Single_Cart_Product = ({ 
  //   this.cart_prod_name,
  //   this.cart_prod_picture,
  //   this.cart_prod_price,
  //   this.cart_prod_quantity,
  //   this.cart_prod_color,
  //   this.cart_prod_size
  // });

  const Single_Cart_Product({Key key, 
  this.cart_prod_name, 
  this.cart_prod_picture, 
  this.cart_prod_price, 
  this.cart_prod_size, 
  this.cart_prod_color, 
  this.cart_prod_quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
      elevation: 10.0,
      color: Colors.white54,
      child: ListTile(
        
        leading: Image.asset(
          cart_prod_picture,
          height: 100.0,
          width: 80.0,
          fit: BoxFit.contain,
        ),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                
                Expanded(
                  child: Text(
                    
                    "Color : $cart_prod_color ",
                     style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),
                    
                    
                  ),
                ),

               
              ],
            ),

            SizedBox(height: 10.0,),

            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Size : $cart_prod_size",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),
                  ),

                
                ),
              ],
            ),


            SizedBox(height: 10.0,), 
            Row(
              children: <Widget>[
                Text(
                      "\$${cart_prod_price}",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontStyle: FontStyle.italic
                      ),
                    ),
              ],
            ),

            
             
                 
                  
                  
                
          ],
        ),
      trailing: Column(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_drop_up),
            onPressed: (){},
          ),

          Text("$cart_prod_quantity"),

          IconButton(
            
            icon: Icon(Icons.arrow_drop_down),
            onPressed: (){},
          )
        ], 
      ),  
      ),
      
    );
  }
}

// void addQuantity(){
//   cart_prod_quantity = cart_
// }