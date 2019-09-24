import 'package:fashapp/screens/Cart.dart';
import 'package:fashapp/widgets/Carousell.dart';
import 'package:fashapp/widgets/GridView.dart';
// import 'package:fashapp/widgets/Category.dart';
import 'package:fashapp/widgets/Horizontal.dart';
import 'package:fashapp/widgets/Icons.dart';
import 'package:fashapp/widgets/Recent.products.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
      appBar: AppBar(
        title: Text("Fashionize",
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

      IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
            
          },
      )],

      

        
        
        ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Mega"),
              accountEmail: Text("Emmanuelsumeh@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person, 
                    color: Colors.white
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.pink
             ),
              ),
              
                // body
              InkWell(
                child : ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "Home Page"
                  ),
                  onTap: (){

                  },
                  
                )
              ),

              InkWell(
                child : ListTile(
                  leading: Icon(
                  
                    Icons.person,
                    color: Colors.pink,
                  ),
                  title: Text(
                    "My Account"
                  ),
                  onTap: (){

                  },
                  
                )
              ),

              InkWell(
                child : ListTile(
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "My Cart"
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                  },
                  
                )
              ),

              InkWell(
                child : ListTile(
                  leading: Icon(
                    Icons.dashboard,
                    color: Colors.greenAccent
                  ),
                  title: Text(
                    "My Orders"
                  ),
                  onTap: (){

                  },
                  
                )
              ),

              InkWell(
                child : ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Favourites"
                  ),
                  onTap: (){

                  },
                  
                )
              ),

              Divider(),

              InkWell(
                child : ListTile(
                  leading: Icon(
                    Icons.pan_tool,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "Settings"
                  ),
                  onTap: (){

                  },
                  
                )
              ),

              InkWell(
                child : ListTile(
                  
                  leading: Icon(
                    Icons.data_usage,
                    color: Colors.blue,
                    
                    ),
                    
                    
                  
                  title: Text(
                    "About"
                  ),
                  onTap: (){

                  },
                  
                )
              )
                

            ],
        ),
        
      ),  

      body: ListView(
        children: <Widget>[
          Carousell(), 
           Categories(),
           Divider(),
           Iconss(),
           Recent(),
           Divider(),

// Grid View
           Container(
             height: 500.0,
             child: Products()
             
           )
// Try creating a simple function if it doesnt workx
    //         Card(
    //   child: Hero(
    //       tag: "Clothes",
    //       child: Material(
    //         child: InkWell(
    //           onTap: () {},
    //           child: GridTile(
    //               footer: Container(
    //                 color: Colors.white70,
    //                 child: ListTile(
    //                     leading: Text(
    //                       "Gown",
    //                       style: TextStyle(fontWeight: FontWeight.bold),
    //                     ),
    //                     title: Text(
    //                       "500",
    //                       style: TextStyle(
    //                           color: Colors.red, fontWeight: FontWeight.w800),
    //                     ),
    //                     subtitle: Text(
    //                       "700",
    //                       style: TextStyle(
    //                           color: Colors.black54,
    //                           fontWeight: FontWeight.w800,
    //                           decoration
    //                               :TextDecoration.lineThrough),
    //                     ),
    //                 ),
    //               ),
    //               child: Image.asset(
    //                 'assets/products/product4.jpg',
    //                 fit: BoxFit.cover,
    //               )),
    //         ),
    //       )),
    // )
        ]
          //  Products()
           
           
            
           
        
          
      
      
      
       ));
       
      
 
  }
  
}