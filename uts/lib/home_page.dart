import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile', arguments: username);
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Halo, $username!',
              style: TextStyle(
                fontSize: 28, // Larger font size
                fontWeight: FontWeight.bold, // Bold text
                color: Colors.blueAccent, // Text color
                fontFamily: 'Roboto', // Custom font jika ada
                letterSpacing: 2.0, // jarak spasi
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.grey.withOpacity(0.5),
                    offset: const Offset(3, 3),
                  ),
                ], // menambah efek bayangan
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // Posisi bayangan
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/feed3.jpg', // Letakkan gambar disini
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigasi ke halaman Order
          Navigator.pushNamed(context, '/order');
        },
        backgroundColor: Colors.lightBlueAccent, // warna tombol
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
