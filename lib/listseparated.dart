import 'package:flutter/material.dart';

class ListViewSeparatedScreen extends StatelessWidget {
  const ListViewSeparatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Separated Screen'),
        backgroundColor: Colors.blue,),
      body:ListView.separated(
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'),
            );
          }
      ),
    );
  }
}