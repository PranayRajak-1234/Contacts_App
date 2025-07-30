import 'package:flutter/material.dart';

void main() => runApp(ContactApp());

class Contact {
  final String name;
  final String phone;

  Contact({required this.name, required this.phone});
}

class ContactApp extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: "Pranay", phone: "98765XXXX"),
    Contact(name: "Virat Kohli", phone: "98591XXXX"),
    Contact(name: "Cathy Brown", phone: "987654XXXX"),
    Contact(name: "David", phone: "957824XXXX"),
    Contact(name: "Cameron Green", phone: "93582XXXX"),
    Contact(name: "A", phone: "957824XXXX"),
    Contact(name: "B", phone: "957824XXXX"),
    Contact(name: "C", phone: "957824XXXX"),
    Contact(name: "D", phone: "957824XXXX"),
    Contact(name: "E", phone: "957824XXXX"),
    Contact(name: "F", phone: "957824XXXX"),
    Contact(name: "G", phone: "957824XXXX"),
    Contact(name: "H", phone: "957824XXXX"),
    Contact(name: "I", phone: "957824XXXX"),
    Contact(name: "J", phone: "957824XXXX"),
    Contact(name: "K", phone: "957824XXXX"),
    Contact(name: "L", phone: "957824XXXX"),
    Contact(name: "M", phone: "957824XXXX"),
    Contact(name: "N", phone: "957824XXXX"),
    Contact(name: "O", phone: "957824XXXX"),
    Contact(name: "P", phone: "957824XXXX"),
    Contact(name: "Q", phone: "957824XXXX"),
    Contact(name: "R", phone: "957824XXXX"),
    Contact(name: "S", phone: "957824XXXX"),
    Contact(name: "T", phone: "957824XXXX"),
    Contact(name: "U", phone: "957824XXXX"),
    Contact(name: "V", phone: "957824XXXX"),
    Contact(name: "W", phone: "957824XXXX"),
    Contact(name: "X", phone: "957824XXXX"),
    Contact(name: "Y", phone: "957824XXXX"),
    Contact(name: "Z", phone: "957824XXXX"),
    Contact(name: "ABCD", phone: "957824XXXX"),
    Contact(name: "EFGH", phone: "957824XXXX"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contacts")),
        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return ListTile(
              leading: CircleAvatar(child: Text(contact.name[0])),
              title: Text(contact.name),
              subtitle: Text(contact.phone),
              trailing: Icon(Icons.phone),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(contact.name),
                    content: Text("Phone: ${contact.phone}"),
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
