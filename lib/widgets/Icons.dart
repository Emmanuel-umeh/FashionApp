import 'package:fashapp/widgets/Category.dart';
import 'package:flutter/material.dart';

class Iconss extends StatelessWidget{
  // final image_location = [
  //   'assets/images/icons1.jfif',
  //   'assets/images/icons2.jpg',
  //   'assets/images/icons3.jpg',
  //   'assets/images/icons4.jpg',



  // ];
  // final image_caption= [
  //   'Shirts',
  //   'Trousers',
  //   'Dresses',
  //   'Corporate'
  // ];

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 100.0,
      width: double.infinity,
      child :
      ListView(
        scrollDirection: Axis.horizontal,
        
        children: <Widget>[
          
          Category(
            image_location : 'Dresses',
            image_caption : 'assets/images/icons2.jpg'
          ),
          Category(
            image_location : 'Trousers',
            image_caption : 'assets/images/icons3.jpg'
          ),
          Category(
            image_location : 'Gowns',
            image_caption : 'assets/images/icons4.jpg'
          ),
          Category(
            image_location : 'Corporate',
            image_caption : 'assets/images/icons1.jfif'
          ),
          
          
          ],
      )
      )
      ;

  }
  }