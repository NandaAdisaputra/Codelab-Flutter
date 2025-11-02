import 'package:flutter/material.dart';

// Kelas utama yang menampilkan daftar (list) program studi secara dinamis
class DinamisListScreen extends StatelessWidget {
  const DinamisListScreen({super.key});

  // Daftar program studi yang akan ditampilkan di ListView
  final List<String> numberList = const <String>[
    "S1 Teknik Informatika",
    "S1 Sistem Informasi",
    "S1 Ilmu Komunikasi",
    "S1 Pariwisata",
    "S1 Ilmu Hukum",
    "S1 Teknologi Hasil Pertanian",
    "S1 Akutansi",
    "S1 Teknik Sipil",
    "S1 Manajemen",
    "S1 Psikologi",
    "S1 Kedokteran"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bagian AppBar (judul halaman di atas)
      appBar: AppBar(
        title: Text("DINAMIS LIST VIEW SCREEN"),
        backgroundColor: Colors.amber, // warna latar AppBar
      ),

      // Body menggunakan ListView untuk menampilkan data secara vertikal
      body: ListView(
        // map() digunakan untuk mengubah setiap item di numberList menjadi widget
        children: numberList.map((number) {
          return Container(
            height: 200, // tinggi setiap kotak item
            decoration: BoxDecoration(
              color: Colors.blue, // warna latar belakang item
              border: Border.all(color: Colors.black), // garis tepi hitam
            ),
            // Center digunakan agar teks berada di tengah container
            child: Center(
              child: Text(
                '$number', // menampilkan nama program studi
                style: const TextStyle(
                  fontSize: 24, // ukuran teks
                  fontFamily: 'Helvetica',
                  color: Colors.white, // warna teks
                ),
              ),
            ),
          );
        }).toList(), // ubah hasil map menjadi List widget
      ),
    );
  }
}
