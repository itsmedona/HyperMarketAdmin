import 'package:flutter/material.dart';

class UsersListScreen extends StatelessWidget {
  final List<String> userNames = ['Abhishek', 'Surya', 'Keerthana', 'Maya'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users  List'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: userNames.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(userNames[index]),
          );
        },
      ),
    );
  }
}
