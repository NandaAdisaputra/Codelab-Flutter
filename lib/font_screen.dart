import 'package:flutter/material.dart';

class FontScreen extends StatelessWidget {
  const FontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FONT SCREEN"),backgroundColor: Colors.amber,),
      body: Container(
        margin: EdgeInsets.only(top: 24),
        alignment: Alignment.center,
        child: Column(
            children: [
          Text('S1 Sistem Informasi'),
          Text( 'S1 Teknik Informatika',style: TextStyle( fontFamily:'Helvetica')),
          Text('S1 Ilmu Komunikasi'),
          Text(
            'S1 Pariwisata'),
        ]),
      ),
    );
  }
}