import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:task_5/home/home.dart';

class LoginController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool IsEmailValid = false;
  bool IsPassValid = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  //login if user enter validate email and password
  void loginUser() async {
    User? user = await MySignInWithEmailAndPassword(
        emailController.text, passwordController.text);

    if (user != null) {
      print("User Is Sucssecful logIn");
      Get.offAll(() => const Home());
    } else {
      print("some error has happend");
    }
  }

  Future<User?> MySignInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("some error");
    }
    return null;
  }

  bool validateEmail(String input) {
    RegExp emailRefExp = RegExp(r'^[\w\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (emailRefExp.hasMatch(input)) {
      return true;
    } else
      return false;
  }

  bool validatePassworld(String input) {
    RegExp passRefExp = RegExp(r'^.{8,}$');
    if (passRefExp.hasMatch(input)) {
      return true;
    } else
      return false;
  }
}
