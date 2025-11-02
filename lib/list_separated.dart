import 'package:flutter/material.dart';

// Kelas ListSeparatedScreen menampilkan daftar (list) program studi
// dengan pemisah (divider) antar item menggunakan ListView.separated
class ListSeparatedScreen extends StatelessWidget {
  const ListSeparatedScreen({super.key});

  // Daftar program studi yang akan ditampilkan dalam list
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
      // Bagian atas halaman (AppBar)
      appBar: AppBar(
        title: Text("LIST SEPARATED SCREEN"),
        backgroundColor: Colors.amber, // warna AppBar
      ),

      // Body menggunakan ListView.separated
      // ListView.separated digunakan untuk membuat list dengan pemisah antar item
      body: ListView.separated(
        // jumlah item yang akan dibuat sesuai panjang daftar numberList
        itemCount: numberList.length,

        // itemBuilder menentukan tampilan tiap item dalam daftar
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250, // tinggi setiap item list
            decoration: BoxDecoration(
              color: Colors.blue, // warna latar belakang
              border: Border.all(color: Colors.black), // garis tepi item
            ),
            child: Center(
              // Menampilkan teks nama program studi
              child: Text(
                '${numberList[index]}', // ambil item berdasarkan index
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                  color: Colors.white,
                ),
              ),
            ),
          );
        },

        // separatorBuilder digunakan untuk menampilkan pemisah antar item (divider)
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(); // garis pemisah antar item
        },
      ),
    );
  }
}
