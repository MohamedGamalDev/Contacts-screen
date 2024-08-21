import 'package:flutter/material.dart';
class Name extends StatelessWidget {
  TextEditingController control;
  Name({required this.control});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller:control ,
        style: TextStyle(fontSize: 18,color: Colors.black
        ), decoration: InputDecoration(
        suffixIcon: Icon(Icons.edit),
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          labelText: 'Enter your name',
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



