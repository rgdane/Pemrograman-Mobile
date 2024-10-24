import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Stack(
        children: [
          // Gambar background dengan opacity yang dikurangi
          Positioned(
            top: -80,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.3, // Mengurangi opacity gambar
              child: Image.asset(
                'assets/Logo.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          // Membungkus teks dengan container transparan
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 194, 235, 255).withOpacity(0.7), // Warna abu-abu dengan opacity 0.7
                  borderRadius: BorderRadius.circular(10), // Membuat border melengkung
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Sesuaikan ukuran kolom dengan konten
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Catharsis Shoe Care merupakan brand yang bergerak di bidang laundry sepatu. Kami berlokasi di Jl. Sekolahan No.330, Malang.',
                      style: TextStyle(fontSize: 18), // Warna teks putih agar kontras
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kami selalu menggunakan bahan-bahan premium dari Fama untuk hasil yang maksimal tanpa merusak sepatu.',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Surga di bawah telapak kaki ibu, cuci sepatu ibumu hanya di Catharsis Shoe Care.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
