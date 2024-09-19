void main() {
  String nama = 'Rega Dane Wijayanta';
  String nim = '2241760113';
  
  for (int angka = 2; angka <= 201; angka++) {
    if (isPrima(angka)) {
      print('Bilangan prima: $angka, Nama: $nama, NIM: $nim');
    }
  }
}

bool isPrima(int angka) {
  if (angka < 2) return false;
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) return false;
  }
  return true;
}
