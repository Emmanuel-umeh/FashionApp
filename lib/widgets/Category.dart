import 'package:flutter/material.dart';


class Category extends StatelessWidget{

  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return 
          Padding(
            padding: EdgeInsets.only(top: 0.1),
            child: InkWell(
              child: 
              Container(
                height: 120.0,
                width: 100.0,
                // width: double.infinity,
              
                child: ListTile( 
                  
                  title: Image.asset(
                    
                  
                  image_caption,
                  fit: BoxFit.fill,
                  width: 100.0,
                  height: 70.0,

                  
                  
                  
                  
                ),
                subtitle:Text(image_location,
                textAlign: TextAlign.center),
                ),
              ),
              
              onTap: (){

              },
            ),
          );
  
  }
}

// class Iconss extends StatelessWidget{
//   final image_location = [
//     'assets/images/icons1.jfif',
//     'assets/images/icons2.jpg',
//     'assets/images/icons3.jpg',
//     'assets/images/icons4.jpg',



//   ];
//   final image_caption= [
//     'Shirts',
//     'Trousers',
//     'Dresses',
//     'Corporate'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Category();
//   }
// }