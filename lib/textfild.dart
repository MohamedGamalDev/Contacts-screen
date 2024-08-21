import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: TextStyle(fontSize: 18,color: Colors.black
        ), decoration: InputDecoration(
          suffixIcon: Icon(Icons.delete,color: Colors.red),
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

          labelStyle: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w500),
          filled: true,
          fillColor: Colors.white
      ),
      ),
    );
  }
}