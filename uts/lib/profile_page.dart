import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center( // Membungkus Column dengan Center agar berada di tengah
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menempatkan elemen di tengah secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // Menempatkan elemen di tengah secara horizontal
            children: <Widget>[
              // Foto profil menggunakan CircleAvatar
              CircleAvatar(
                radius: 60, // Ukuran lingkaran avatar
                backgroundImage: AssetImage('assets/profile_picture.jpg'), // Path gambar profil
              ),
              SizedBox(height: 20), // Jarak antara foto profil dan informasi pengguna
              
              // Nama Lengkap
              Text(
                'Nama Lengkap: Rega Dane',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Jarak antar informasi
              
              // Alamat
              Text(
                'Alamat: Jl. Mawar',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              
              // Nomor Telepon
              Text(
                'Nomor Telepon: 083271893',
                style: TextStyle(
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
