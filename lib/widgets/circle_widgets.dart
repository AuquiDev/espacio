import 'package:flutter/material.dart';



class CircleWidgets extends StatelessWidget {
   CircleWidgets({super.key, 
   required this.colors,
   required this.radius,
    this.icon});

  double radius;
  List<Color> colors;
  IconButton? icon;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //color:color,
        boxShadow: [
          BoxShadow(
            color:Color.fromARGB(255, 211, 162, 216).withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0,9)
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          //listados de elemntos que tan grande debe predominar un color
          //stops: ,
          colors: colors
          ),
          
      ),
      child: icon,
    );
  }
}