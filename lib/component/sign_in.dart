import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  final String text;

  const MyButton(
    {super.key, 
    required this.onTap, 
    required this.text,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        padding:const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal:50),
        decoration : BoxDecoration(
          color:Colors.blue[900],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child:
        Text(
          text,
          style: const TextStyle(
            color:Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold),
          ),
    
        ),),
    );
  }
} 