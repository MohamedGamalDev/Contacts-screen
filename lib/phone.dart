import 'package:flutter/material.dart';
class Phone extends StatelessWidget {
  TextEditingController control;
  Phone({required this.control});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller:control ,
        style: TextStyle(fontSize: 18,color: Colors.black
        ), decoration: InputDecoration(
          suffixIcon: Icon(Icons.phone),
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          labelText: 'Enter your phone number',
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