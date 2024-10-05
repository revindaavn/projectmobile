import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  void login() {
    // Proses login
    String username = usernameController.text;
    String password = passwordController.text;

    // Cek login
    if (username == 'admin' && password == '1234') {
      Get.offNamed('/main'); // Menuju MainView setelah login sukses
    } else {
      Get.snackbar('Error', 'Invalid username or password');
    }
  }
}
