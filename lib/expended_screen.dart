import 'package:flutter/material.dart';

class ExpendedScreen extends StatelessWidget {
  const ExpendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Expended Screen'),
    backgroundColor: Colors.blue,
    ),
    body:Row( children: [
    Expanded(
      flex: 9,
      child: Container(
        color: Colors.yellow,
        height: 50,
        child: Center(child: Text('Left')),),),
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.green,
          height: 50,
          child: Center(child: Text('Right')),),),
    ],
    ),
    );
  }
}

