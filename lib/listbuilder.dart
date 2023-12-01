import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('List Builder Screen'),
    backgroundColor: Colors.blue,),
    body:ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('Item $index'),
      );
    }
    ),
    );
  }
}