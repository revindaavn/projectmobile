import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background putih
      appBar: AppBar(
        title: Text('Login'), // Judul halaman
        backgroundColor: Colors.blue, // Warna biru pada AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding di sekitar konten
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Tengah vertikal
          children: [
            Text(
              'Selamat Datang!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 20),
            TextField(
              controller: loginController.usernameController,
              decoration: InputDecoration(
                labelText: 'Username', // Label untuk input username
                border: OutlineInputBorder(), // Border input
                prefixIcon: Icon(Icons.person), // Ikon di depan input
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: loginController.passwordController,
              decoration: InputDecoration(
                labelText: 'Password', // Label untuk input password
                border: OutlineInputBorder(), // Border input
                prefixIcon: Icon(Icons.lock), // Ikon di depan input
              ),
              obscureText: true, // Mengaburkan text password
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                loginController.login();
              },
              child: Text('Login'), // Teks pada tombol
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Warna tombol
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Padding tombol
                textStyle: TextStyle(fontSize: 16), // Ukuran teks tombol
              ),
            ),
          ],
        ),
      ),
    );
  }
}
