# ✅ Todo List App with Firebase Backend

## 📖 Project Overview
Aplikasi **Todo List** ini dibuat menggunakan **Flutter** dengan integrasi **Firebase Cloud Firestore** sebagai backend database.  
Tujuannya adalah untuk memudahkan pengguna dalam mencatat, memperbarui, dan menghapus daftar tugas secara real-time, dengan data yang tersimpan di cloud sehingga bisa diakses dari mana saja.  

Proyek ini termasuk dalam kategori **Full Functioning Web Application** karena sudah menggunakan backend (Firebase), autentikasi opsional, dan arsitektur yang terstruktur.

Tujuan utama dari proyek ini:
- Mengimplementasikan fitur **CRUD** berbasis *cloud database (Firestore)*.
- Menunjukkan penggunaan **state management** agar kode mudah dikembangkan.
- Menerapkan konsep **Clean Architecture** untuk memisahkan logika, data, dan UI.
- Menggunakan **AI (ChatGPT/IBM Granite)** untuk mempercepat proses pengembangan dan dokumentasi.

---

## 💻 Technologies Used
| Komponen | Deskripsi |
|-----------|------------|
| **Framework** | Flutter |
| **Language** | Dart |
| **Backend** | Firebase Cloud Firestore |
| **State Management** | Cubit (Bloc) |
| **Architecture** | Clean Architecture |
| **AI Assistant** | ChatGPT / IBM Granite |

---

## ✨ Features
Aplikasi ini memiliki fitur utama sebagai berikut:
- ➕ **Add Todo** – Menambahkan tugas baru dan menyimpannya di Firestore.
- 📋 **Read Todo** – Menampilkan daftar tugas secara real-time dari Firebase.
- ✏️ **Update Todo** – Mengedit data tugas yang sudah ada.
- ❌ **Delete Todo** – Menghapus tugas dari Firestore.
- 🔄 **Realtime Sync** – Setiap perubahan langsung tampil di UI.
- ☁️ **Cloud-based Data Storage** – Data tetap tersimpan meski aplikasi ditutup atau dijalankan di perangkat lain.

---

## 🧠 AI Support Explanation
Dalam proses pengembangan proyek ini, **AI digunakan sebagai asisten pengembang**, bukan bagian dari aplikasi.  
Berikut contoh bagaimana AI mendukung proses pengembangan:
- Membantu membuat **struktur folder Clean Architecture** (data, domain, presentation).
- Menghasilkan **template model dan repository CRUD** untuk Firestore.
- Memberikan panduan **integrasi Firebase** ke Flutter dengan aman.
- Membantu menulis **README.md**, dokumentasi kode, dan komentar.
- Memberikan saran untuk optimasi performa aplikasi dan arsitektur.

Dengan bantuan AI, pengembangan menjadi lebih cepat, rapi, dan terarah.

---

## ⚙️ Setup Instructions
Ikuti langkah-langkah berikut untuk menjalankan aplikasi:

1. **Clone repository**
   ```bash
   git clone https://github.com/krisnaCIHUUUY/todo_app.git

2. **Masuk ke Folder**
   ```bash
   cd todo_app
   
4. **install dependencies**
   ```bash
   flutter pub get
   
6. **setup firebase**
   Buat project di Firebase Console
   Tambahkan file **google-services.json** (Android) dan/atau **firebase_options.dart** (untuk FlutterFire CLI)
   Pastikan konfigurasi Firebase sudah benar di **main.dart**
8. **jalankan aplikasi**
   ```bash
   flutter run
