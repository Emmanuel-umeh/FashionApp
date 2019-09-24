import 'package:fashapp/product_widgets/Similar_Products.dart';
import 'package:fashapp/screens/Cart.dart';
import 'package:fashapp/screens/HomePage.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_picture,
    this.product_detail_old_price

  });

  @override
  State createState() => ProductDetailsState();
}

class ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
                  child: Text("Fashionize",
                  
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white
            
          ),),
        ),
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

      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            color : Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.product_detail_picture,
                  fit: BoxFit.contain
                ),
                
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                  ),),
                  title: Row(
                    
                    children: <Widget>[
                      
                      Expanded(
                        child: Text(
                          "N""${widget.product_detail_old_price}",//access parameters from Parent class
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "N""${widget.product_detail_new_price}",
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.black
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    child: Text(
                      "Qty",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.red
                      ),
                    ),
                    elevation: 10.0,
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                             title: Text("Select Quantity of product"),
                        content: FlatButton(
                          child: Text("CLose",
                          textAlign: TextAlign.end,),
                          onPressed: (){
                            Navigator.of(context).pop(context);

                          },
                        )
                          );
                        },
                       
                      );
                      
                    },
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)

                  
                  
                

        
                  )
                  ),

                 Expanded(
                    child: FlatButton(
                      
                      child : Icon(Icons.arrow_drop_down),
                      onPressed: (){
                         showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                             title: Text("Select Quantity of product"),
                        content: FlatButton(
                          child: Text("Close",
                          style: TextStyle(
                            color : Colors.blue,
                          ),
                          
                          textAlign: TextAlign.end,),
                          onPressed: (){
                            Navigator.of(context).pop(context);

                          },
                        )
                          );
                        },
                       
                      );
                      },)
                   
                  ),







                  Expanded(
                  child: MaterialButton(
                    child: Text(
                      "Size",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.red
                      ),
                    ),
                    elevation: 10.0,
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                             title: Text("Select Size of product"),
                        content: FlatButton(
                          child: Text("CLose",
                          textAlign: TextAlign.end,),
                          onPressed: (){
                            Navigator.of(context).pop(context);

                          },
                        )
                          );
                        },
                       
                      );
                      
                    },
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)

                  
                  
                

        
                  )
                  ),

                  Expanded(
                    child: FlatButton(
                      
                      child : Icon(Icons.arrow_drop_down),
                      onPressed: (){
                         showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                             title: Text("Select Size of product"),
                        content: FlatButton(
                          child: Text("CLose",
                          textAlign: TextAlign.end,),
                          onPressed: (){
                            Navigator.of(context).pop(context);

                          },
                        )
                          );
                        },
                       
                      );
                      },)
                   
                  ),




                 Expanded(
                  child: MaterialButton( 
                    
                    child: Text(
                      "Color",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.red
                      ),
                    ),
                    elevation: 10.0,
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                             title: Text("Select Color of product"),
                        content: FlatButton(
                          
                          child: Text("CLose",
                          textAlign: TextAlign.end,),
                          onPressed: (){
                            Navigator.of(context).pop(context);

                          },
                        )
                          );
                        },
                       
                      );
                      
                    },
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)

                  
                  
                

        
                  )
                  ),

                  Expanded(
                    child: FlatButton(
                      
                      child : Icon(Icons.arrow_drop_down),
                      onPressed: (){
                         showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                             title: Text("Select Color of product"),
                        content: FlatButton(
                          child: Text("CLose",
                          textAlign: TextAlign.end,),
                          onPressed: (){
                            Navigator.of(context).pop(context);

                          },
                        )
                          );
                        },
                       
                      );
                      },)
                   
                  ),

                  
                  
                

        
                  
                  ],
            ),
          ),

          //Second Material Button

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[

                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: (){

                  },
                ),

                Expanded(
                  child: RaisedButton(
                  elevation: 10.0,
                  shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
                 
              // color: this.backgroundColor,
                    
                    
                    // elevation: ,
                    color: Colors.red,
                    
                    textColor: Colors.white,
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text(
                              "You Have Successfully Added This Product To Your Cart. Please Navigate to Cart for Confirmation"
                            ),
                            content: FlatButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "Close",
                                textAlign: TextAlign.end,
                              ),
                            ),
                          );
                        } 
                      );
                    },
                    child: Text(
                      "Buy Now!"
                    )
                  ),
                ), 

                
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: (){},
                ),


               

        
              ],
            ),
          ),


            Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Product Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.redAccent
                  ),
                ),
              ),
                  
                Card(
                  
                  
                  borderOnForeground: true,
                  elevation: 10.0,
                  color: Colors.white24,
                  child: Text("jedjf djfjdfdf df dj sdj s djf sdj fsd fjsd j fjs dfj sdj fjsd fjsd j fsdj fsd fjd sj fjsd fjs d fsdj fjsd s fjdj fjsd fjsd fj fsjdfj sdjfsjd fjsdj fsdj fsd fjsdf sdfj fj sfdsj fsdj fsd fjsdfsd jf sdj fjj sjf d fsdjfjsd fj jf jqa fsj fja fjsoj skf aofib qwf f q qps cpax kq fa fis faf qfao foas f qwj ao qc  fasof qw fx afqo fa foq x sofa fqo fa sfobq wj fao ffoq sj")
                ),

                Card(
                  elevation: 10.0,
                  color: Colors.white24,
                  child: Column(
                    children: <Widget>[
                      Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                      child: Text(
                        "Product Name : ",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child : Text(
                        widget.product_detail_name,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                        ),
                      )
                    )],
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                      child: Text(
                        "Product Brand : ",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
// Remember to change the brand
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child : Text(
                        "Brand Mega",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.redAccent
                        ),
                      )
                    )
                  ],
                ),
// Remember to add product condition property
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                      child: Text(
                        "Product Condition : ",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child : Text(
                        "Brand New",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color  : Colors.redAccent
                        ),
                      )
                    )
                  ],
                )
                    ],
                  )
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 40.0,
                    child: Text(
                      "Similar Products",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 360.0,
                    child: SimilarProducts(),
                  ),
                )

                
                
                

        ],

      

        
        
      ),
    
      

      

      
      );
      
  }
}

