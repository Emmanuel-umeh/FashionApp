import 'package:flutter/material.dart';


class Recent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        "Recent Products",
        textAlign: TextAlign.center,
        style : TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        )
      ),

    );
  }
  
}

