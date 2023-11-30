import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IMAGE SCREEN"),backgroundColor: Colors.amber,),
      body: Center(
        child: Image.asset('assets/images/image_flutter.png', width: 200, height: 200)),
    );
  }
}