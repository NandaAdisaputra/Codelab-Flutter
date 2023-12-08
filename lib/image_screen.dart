import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IMAGE SCREEN"),backgroundColor: Colors.amber,),
      body: Column(children: [
      Center(child: Image.asset('assets/images/image_flutter.png', width: 200, height: 200)),

      SizedBox(height: 16),

      Center(child: Image( image: AssetImage('assets/images/image_flutter.png'), width: 200,height: 200,)),

      SizedBox(height: 16),

      Center(
      child: Image.network('https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/flutter%20logo_omSaocF.png'
    , width: 200, height: 200)),
    ])
    );
  }
}