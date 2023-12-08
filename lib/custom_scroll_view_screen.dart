import 'package:flutter/material.dart';
import 'components/sliver_delegate.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomScrollViewScreen extends StatelessWidget {
  const CustomScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CUSTOM_SCROLL_VIEW SCREEN"),),
      body: CustomScrollView(
      slivers: [
      SliverPersistentHeader(
      pinned: true,
        delegate: SliverAppBarDelegate(
          minHeight: 50,
          maxHeight: 50,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Detail FTIK USM'),
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: Image(
          image: AssetImage('assets/images/ftik_usm_jaya.png'), width: 250, height: 250,),
        ),
      SliverToBoxAdapter(child: SizedBox(height: 16)),
      const SliverToBoxAdapter(
        child: Text(
          'Visi FTIK',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
      SliverToBoxAdapter(child: SizedBox(height: 8)),
      SliverToBoxAdapter(
        child: Container(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            onPressed: () {launchUrlStart(url: "https://desawisatatawangmangu.com/"); },
            child: Text('Visit Web FTIK USM'),
          ),
        ),
      )
      ],
    ),
    );
  }
  Future<void> launchUrlStart({required String url}) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}