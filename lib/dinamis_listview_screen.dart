import 'package:flutter/material.dart';

class DinamisListScreen extends StatelessWidget {
  const DinamisListScreen({super.key});

  final List<String> numberList = const <String>["S1 Teknik Informatika", "S1 Sistem Informasi",
    "S1 Ilmu Komunikasi", "S1 Pariwisata", "S1 Ilmu Hukum", "S1 Teknologi Hasil Pertanian",
    "S1 Akutansi", "S1 Teknik Sipil", "S1 Manajemen", "S1 Psikologi", "S1 Kedokteran"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("DINAMIS LIST VIEW SCREEN"),backgroundColor: Colors.amber,),
    body: ListView(
    children: numberList.map((number) {
      return Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            '$number', // Ditampilkan sesuai item
            style: const TextStyle(fontSize: 24, fontFamily: 'Helvetica', color: Colors.white),
          ),
        ),
      );
    }).toList(),
    ),
    );
  }
}