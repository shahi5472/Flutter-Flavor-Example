import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reference = FirebaseFirestore.instance.collection("users");
    return Scaffold(
      appBar: AppBar(title: Text(F.title)),
      body: Center(child: Text('Hello ${F.title}')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          reference
              .add({
                'name': 'Hello world',
                'full_name': F.title,
                'mode': F.currentFlavor.name,
              })
              .then((value) => debugPrint("User Added"))
              .catchError((error) => debugPrint('Error: => $error'));
        },
      ),
    );
  }
}
