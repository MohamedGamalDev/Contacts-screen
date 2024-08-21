import 'package:contacts_screen/name.dart';
import 'package:contacts_screen/phone.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();

  List<String> names = [];
  List<String> numbers = [];

  void addContact() {
    setState(() {
      if (name.text.isNotEmpty && phone.text.isNotEmpty) {
        names.add(name.text);
        numbers.add(phone.text);
        name.clear();
        phone.clear();
      }
    });
  }

  void deleteContact(int index) {
    setState(() {
      names.removeAt(index);
      numbers.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: Column(
        children: [
          Name(control: name),
          Phone(control: phone),
          ElevatedButton(
            onPressed: addContact,
            child: Text('Add Contact'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name: ${names[index]}',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Phone: ${numbers[index]}',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(Icons.delete, size: 30, color: Colors.red),
                            onPressed: () => deleteContact(index),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
