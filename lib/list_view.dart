import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LIST VIEW SCREEN"),backgroundColor: Colors.amber,),
      body: ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text("S1 Teknik Informatika", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Helvetica'),),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text("S1 Sistem Informasi", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Helvetica'),),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text("S1 Ilmu Komunikasi", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Helvetica'),),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text("S1 Pariwisata", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Helvetica'),),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text("S1 Hukum", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Helvetica'),),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text("S1 Teknik Sipil", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Helvetica'),),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text("S1 Teknologi Hasil Pertanian", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Helvetica'),),
              ),
            ),
            ]
      ),
    );
  }
}