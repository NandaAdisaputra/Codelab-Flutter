import 'package:flutter/material.dart';
import 'components/sliver_delegate.dart';
import 'package:url_launcher/url_launcher.dart';

// Kelas utama yang menampilkan halaman dengan CustomScrollView
class CustomScrollViewScreen extends StatelessWidget {
  const CustomScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar di bagian atas layar
      appBar: AppBar(
        title: Text("CUSTOM_SCROLL_VIEW SCREEN"),
      ),

      // Body menggunakan CustomScrollView agar bisa scroll dengan efek sliver
      body: CustomScrollView(
        slivers: [
          // SliverPersistentHeader adalah header yang bisa di-pin (tetap menempel di atas)
          SliverPersistentHeader(
            pinned: true, // agar header tetap terlihat saat di-scroll
            delegate: SliverAppBarDelegate(
              minHeight: 50, // tinggi minimal header
              maxHeight: 50, // tinggi maksimal header
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Detail FTIK USM',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ),

          // Menampilkan gambar di dalam SliverToBoxAdapter
          const SliverToBoxAdapter(
            child: Image(
              image: AssetImage('assets/images/ftik_usm_jaya.png'),
              width: 250,
              height: 250,
            ),
          ),

          // Memberi jarak vertikal antar elemen
          SliverToBoxAdapter(child: SizedBox(height: 16)),

          // Judul teks “Visi FTIK”
          const SliverToBoxAdapter(
            child: Text(
              'Visi FTIK',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          // Paragraf penjelasan visi FTIK
          const SliverToBoxAdapter(
            child: Text(
              'Visi Fakultas Teknologi Informasi dan Komunikasi (FTIK) adalah pada Tahun 2022 menjadi salah satu '
              'fakultas terdepan dalam pengembangan IPTekS dan berperan dalam membina kualitas sumber daya '
              'insani, untuk mendukung perkembangan masyarakat ilmiah, yang beradab, bermoral dan berwawasan '
              'lingkungan serta berusaha mewujudkan cita-cita the best communication information technology '
              'with morality melalui penyelenggaraan Tri Dharma Perguruan Tinggi.',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),

          // Jarak tambahan antara teks dan tombol
          SliverToBoxAdapter(child: SizedBox(height: 8)),

          // Tombol menuju website FTIK USM
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Saat ditekan, panggil fungsi untuk membuka URL
                  launchUrlStart(url: "https://ftik.usm.ac.id/");
                },
                child: Text('Visit Web FTIK USM'),
              ),
            ),
          )
        ],
      ),
    );
  }

  // Fungsi untuk membuka URL menggunakan package url_launcher
  Future<void> launchUrlStart({required String url}) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url'; // jika gagal membuka link
    }
  }
}
