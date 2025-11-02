import 'package:flutter/material.dart';

// Kelas ListScreen menampilkan daftar program studi menggunakan ListView statis
class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar adalah bagian atas halaman, menampilkan judul
      appBar: AppBar(
        title: Text("LIST VIEW SCREEN"),
        backgroundColor: Colors.amber, // warna latar belakang AppBar
      ),

      // Body menggunakan ListView agar semua kontainer bisa discroll ke bawah
      body: ListView(
        children: <Widget>[
          // Setiap item daftar ditampilkan menggunakan Container

          Container(
            height: 250, // tinggi setiap item
            decoration: BoxDecoration(
              color: Colors.blue, // warna latar belakang
              border: Border.all(color: Colors.black), // garis tepi hitam
            ),
            child: Center(
              child: Text(
                "S1 Teknik Informatika",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "S1 Sistem Informasi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "S1 Ilmu Komunikasi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "S1 Pariwisata",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "S1 Hukum",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "S1 Teknik Sipil",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "S1 Teknologi Hasil Pertanian",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
