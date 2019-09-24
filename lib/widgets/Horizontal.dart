import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      
        
        

        child : Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            "Categories",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
            ),

  
          ) ,
          
          
        ),

        
      );
      
  

}

}