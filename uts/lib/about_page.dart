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
                  color: const Color.fromARGB(151, 255, 255, 255).withOpacity(0.8), // Warna dengan opacity
                  borderRadius: BorderRadius.circular(10), // Membuat border melengkung
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min, // Sesuaikan ukuran kolom dengan konten
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tentang Catharsis Shoe Care',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent, // Teks judul berwarna biru
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Catharsis Shoe Care merupakan brand yang bergerak di bidang laundry sepatu. Kami berlokasi di:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87, // Warna teks lebih gelap untuk teks normal
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.redAccent), // Icon location untuk menandai alamat
                        SizedBox(width: 5),
                        Text(
                          'Jl. Sekolahan No.330, Malang',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    
                    SizedBox(height: 20),
                    Text(
                      'Aplikasi ini harapannya dapat mempermudah pengguna dalam pemesanan layanan kami.',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
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
