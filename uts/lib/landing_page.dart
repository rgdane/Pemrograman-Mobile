import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: Stack( // Menggunakan Stack untuk mengatur posisi gambar dan konten
        children: [
          Positioned(
            top: -80, // Mengatur posisi gambar agar naik sedikit ke atas
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Logo.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height, // Membuat gambar menutupi seluruh layar
            ),
          ),
          Center( // Membungkus konten di dalam Center agar tetap di tengah
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, // Memposisikan widget di bagian bawah
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, // Warna teks
                    backgroundColor: const Color.fromARGB(255, 52, 191, 255), // Warna background tombol
                  ),
                  child: const Text('Go to Login Page'),
                ),
                const SizedBox(height: 40), // Memberikan jarak dari bawah layar
              ],
            ),
          ),
        ],
      ),
    );
  }
}
