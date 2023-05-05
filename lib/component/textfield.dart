import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;


  const Textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: controller,
                obscureText: obsecureText,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color : Colors.grey.shade400),
                     ),
                     fillColor: Colors.grey.shade100,
                     filled: true,
                     hintText: hintText,

                ),
              ),
            );
  }
}