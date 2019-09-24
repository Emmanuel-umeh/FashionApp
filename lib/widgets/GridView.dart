import 'package:fashapp/screens/product_details.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Products extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProductState();
  }

}

class ProductState extends State<Products>{

  var product_list = [
    {
      "name": "Blazer",
      "picture": 'assets/products/product4.jpg',
      "old_price":2500,
      "price": 2000
    },

    {
      "name": "Casual",
      "picture": 'assets/products/product5.jpg',
      "old_price":1500,
      "price": 1200
    },

    {
      "name": "Gown",
      "picture": 'assets/products/product6.jpg',
      "old_price":6500,
      "price": 4000
    },

    {
      "name": "Womens Corporate",
      "picture": 'assets/products/product3.jfif',
      "old_price":8000,
      "price": 7000
    },

    {
      "name" : "Design",
      "picture" : 'assets/products/product2.jfif',
      "old_price" : 9000,
      "price " : 7000,
    }

  ];

  @override
  Widget build(BuildContext context) {
    return prefix0.GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: EdgeInsets.all(10.0),
          child :
        Single_prod(
          prod_name : product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        )
        
        );
      }
    );
  }

  


}


class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;


  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context){
                      return ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      );
                    }
                  )
                );
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,

                    child : Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                          prod_name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ),
                        Text(
                          "\$$prod_price",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                          
                        ),

                         Text(
                          "\$$prod_old_price",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration
                                  :TextDecoration.lineThrough),
                        ),

                      ],
                    )
                   
                        
                        ),
                        
                           child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )
                        ),
                        
                    ),
                  ),
                 ),
            ),
            
          );
    
    
    
    
    
  }
}
