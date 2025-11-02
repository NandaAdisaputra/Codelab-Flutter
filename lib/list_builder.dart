import 'package:flutter/material.dart';

// Kelas ListBuilderScreen menampilkan daftar program studi
// menggunakan ListView.builder untuk membuat list secara efisien dan dinamis.
class ListBuilderScreen extends StatelessWidget {
  const ListBuilderScreen({super.key});

  // Daftar program studi yang akan ditampilkan
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
      // AppBar menampilkan judul halaman
      appBar: AppBar(
        title: Text("LIST BUILDER SCREEN"),
        backgroundColor: Colors.amber, // warna AppBar
      ),

      // Body menggunakan ListView.builder
      // Builder membuat item hanya saat diperlukan (lebih efisien untuk list panjang)
      body: ListView.builder(
        // jumlah item yang akan dibuat sesuai panjang daftar numberList
        itemCount: numberList.length,

        // itemBuilder akan dipanggil berulang untuk setiap index item
        itemBuilder: (BuildContext context, int index) {
          // Setiap item daftar ditampilkan sebagai sebuah Container
          return Container(
            height: 200, // tinggi item
            decoration: BoxDecoration(
              color: Colors.blue, // warna latar belakang item
              border: Border.all(color: Colors.black), // garis tepi item
            ),
            child: Center(
              // Menampilkan teks nama program studi di tengah container
              child: Text(
                '${numberList[index]}', // ambil data dari list berdasarkan index
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Helvetica',
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
