import 'package:flutter/material.dart';
class Contacts extends StatefulWidget {
  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text(
          'Contact Screen ',
          style: TextStyle(
            fontSize: 40
          ),
        ),
      ),
    );
  }
}