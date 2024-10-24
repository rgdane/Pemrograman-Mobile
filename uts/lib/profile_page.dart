import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center( // Membungkus Column dengan Center agar berada di tengah
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menempatkan elemen di tengah secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // Menempatkan elemen di tengah secara horizontal
            children: <Widget>[
              // Foto profil menggunakan CircleAvatar
              const CircleAvatar(
                radius: 60, // Ukuran lingkaran avatar
                backgroundImage: AssetImage('assets/profile_picture.jpg'), // Path gambar profil
              ),
              const SizedBox(height: 20), // Jarak antara foto profil dan informasi pengguna
              
              // Nama Lengkap
              Text(
                'Nama Lengkap: Rega Dane',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10), // Jarak antar informasi
              
              // Alamat
              Text(
                'Alamat: Jl. Mawar',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              
              // Nomor Telepon
              Text(
                'Nomor Telepon: 083271893',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
