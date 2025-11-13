# UTS Mobile App - Pemrograman Mobile
- **Nama**: Pasha Muhammad Nashwan
- **NIM**: 152023155
- **Kelas**: BB
- **Dosen**: Galih Ashari R., S.Si., MT
- **Semester**: Ganjil 2025/2026

## 📋 Deskripsi Aplikasi

Aplikasi ini merupakan aplikasi mobile berbasis Flutter yang terdiri dari 5 menu utama yang dapat diakses melalui Bottom Navigation Bar. Aplikasi ini dirancang dengan UI/UX yang modern dan responsif.

## ✨ Fitur Aplikasi

### 1. Splash Screen
- Durasi tampil: 5 detik
- Menampilkan:
    - Judul aplikasi
    - Foto mahasiswa
    - NIM
    - Nama mahasiswa
      
### 2. Dashboard dengan Bottom Navigation
Menu utama aplikasi yang terdiri dari 5 navigasi:
- Biodata
- Kontak
- Kalkulator
- Cuaca
- Berita
  
### 3. Halaman Biodata
Fitur:
- Menampilkan foto profil 
- Form input data dengan berbagai widget:
    - TextField untuk nama dan alamat
    - DatePicker untuk tanggal lahir (Calendar)
    - RadioButton untuk jenis kelamin
    - Dropdown untuk pendidikan
- Tombol simpan (data tidak disimpan ke database)
- UI/UX yang responsive dan modern

### 4. Halaman Kontak
Fitur:
- Daftar 15 kontak telepon statis
- Setiap kontak menampilkan:
    - Circle avatar dengan inisial
    - Nama kontak
    - Nomor telepon
    - Tombol call dan message
- Data bersifat statis dari variabel

### 5. Halaman Kalkulator
Fitur operasi matematika:
- Penjumlahan (+)
- Pengurangan (-)
- Perkalian (×)
- Pembagian (÷)
- Pangkat dua (x²)
- Akar kuadrat (√)
- Tombol Clear (C)

### 6. Halaman Cuaca
Fitur:
- Informasi cuaca statis untuk kota Bandung
- Menampilkan:
    - Suhu saat ini
    - Kondisi cuaca dengan icon
    - Kelembapan
    - Kecepatan angin
    - UV index
    - Tekanan udara
    - Prakiraan 5 hari ke depan
- Desain dengan gradient background yang menarik

### 7. Halaman Berita
Fitur:
- Daftar 15 berita statis
- Setiap berita menampilkan:
    - Icon kategori
    - Judul berita
    - Tanggal publikasi
    - Kategori berita
- Tampilan card dengan layout yang responsive

## 🛠️ Teknologi yang Digunakan

- **Framework**: Flutter 3.35.1
- **Language**: Dart
- **SDK**: Dart SDK >=3.0.0 <4.0.0
- **State Management**: StatefulWidget
- **Navigation**: Bottom Navigation Bar
- **Architecture Pattern**: Fragment-based architecture

## 📂 Struktur Folder

```
lib/
├── main.dart
├── screens/
│   ├── splash_screen.dart
│   └── dashboard_screen.dart
├── fragments/
    ├── biodata_fragment.dart
    ├── kontak_fragment.dart
    ├── kalkulator_fragment.dart
    ├── cuaca_fragment.dart
    └── berita_fragment.dart

assets/
└── images/
    └── profile.jpg
```

## 🚀 Cara Menjalankan Aplikasi

### Prasyarat
- Flutter SDK 3.35.1 atau lebih tinggi
- Dart SDK
- Android Studio / VS Code
- Emulator Android atau perangkat fisik

### Langkah-langkah

1. Clone repository ini
```bash
git clone https://github.com/pashamn/UTS-Pemerograman-Mobile.git
cd uts_mobile_app
```

2. Install dependencies
```bash
flutter pub get
```

3. Jalankan aplikasi
```bash
flutter run
```

**Institut Teknologi Nasional Bandung**  
Jl. Khp Hasan Mustopa No.23, Bandung - 40124  
© 2024
