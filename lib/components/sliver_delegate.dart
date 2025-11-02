import 'package:flutter/material.dart';

// Kelas ini digunakan untuk membuat custom SliverPersistentHeader
// (bagian header yang bisa diatur tinggi minimumnya, maksimum, dan isinya).
class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  // Variabel untuk tinggi minimum, maksimum, dan isi widget
  final double minHeight; // tinggi minimum saat header mengecil
  final double maxHeight; // tinggi maksimum saat header penuh
  final Widget child;     // widget yang akan ditampilkan di dalam header

  // Constructor untuk menginisialisasi nilai minHeight, maxHeight, dan child
  SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  // Metode build akan dipanggil untuk membangun tampilan header
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // shrinkOffset: seberapa banyak header sudah discroll ke atas
    // overlapsContent: true jika isi di bawah header menumpuk ke atas
    // Pada contoh ini, child langsung dikembalikan tanpa animasi atau efek
    return child;
  }

  // Mengembalikan tinggi maksimum header
  @override
  double get maxExtent => maxHeight;

  // Mengembalikan tinggi minimum header
  @override
  double get minExtent => minHeight;

  // Menentukan apakah header perlu dibangun ulang ketika ada perubahan
  // Di sini bernilai false karena tidak ada perubahan yang perlu di-render ulang
  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
