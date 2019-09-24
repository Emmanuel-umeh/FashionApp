// import 'package:carousel_pro/carousel_pro.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Carousell extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CarousellState();
  }

}

class CarousellState extends State<Carousell>{
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 200.0,
    width: double.infinity,

    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/avatar.jpg'),
            AssetImage('assets/images/bg-masthead.jpg'),
            AssetImage('assets/images/bg-showcase-1.jpg'),
            AssetImage('assets/images/bg-showcase-2.jpg'),
            AssetImage('assets/images/testimonials-1.jpg'),
            AssetImage('assets/images/testimonials-2.jpg'),
            AssetImage('assets/images/testimonials-3.jpg'),
      ],
      autoplay: true,
      dotSize: 6.0,
      dotPosition: DotPosition.topCenter,
      dotColor: Colors.red,
      dotBgColor: Colors.transparent,
      indicatorBgPadding: 4.0,
      animationCurve: Curves.easeIn,
      animationDuration: Duration(
        milliseconds: 2000,
        
      ),
                  )

        
    
    );
  }

}