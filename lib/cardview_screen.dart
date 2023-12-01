import 'package:flutter/material.dart';

class CardViewScreen extends StatelessWidget {

  const CardViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Card View Screen'),
    backgroundColor: Colors.blue,
    ),
    body: ListView.separated(
    separatorBuilder: (context, index) => Divider(),
    itemCount: 5,
    itemBuilder: (context, index) {
    return Card(elevation: 5, child: ListTile(title: Text('Title'),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete)))
    );
    },
    ),
    );
  }
}