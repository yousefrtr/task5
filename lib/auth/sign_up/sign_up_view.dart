import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_5/auth/login/login_view.dart';

import 'package:task_5/auth/sign_up/sign_up_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                BackaGroundPictures(),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: TextFiledForEmailAndPass(
                                "Email", false, controller.emailController),
                          ),
                          TextFiledForEmailAndPass(
                              "Password", true, controller.passwordController)
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: controller.SineUpUser,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ])),
                          child: Center(
                            child: Text(
                              "sign up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.offAll(LoginView());
                        },
                        child: Text(
                          "log in",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Container BackaGroundPictures() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill)),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 30,
            width: 80,
            height: 100,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/light-1.png'))),
            ),
          ),
          Positioned(
            left: 140,
            width: 80,
            height: 75,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/light-2.png'))),
            ),
          ),
          Positioned(
            right: 40,
            top: 40,
            width: 80,
            height: 75,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/clock.png'))),
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  "Sing Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container TextFiledForEmailAndPass(
      String title, bool isPass, TextEditingController Editingcontroller) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: isPass
              ? Editingcontroller.text.isEmpty
                  ? Border.all(color: Color.fromRGBO(143, 148, 251, 1))
                  : controller.IsPassValid
                      ? Border.all(color: Colors.green)
                      : Border.all(color: Colors.red)
              : Editingcontroller.text.isEmpty
                  ? Border.all(color: Color.fromRGBO(143, 148, 251, 1))
                  : controller.IsEmailValid
                      ? Border.all(color: Colors.green)
                      : Border.all(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey[700]),
        ),
        obscureText: isPass,
        controller: Editingcontroller,
        onChanged: (value) {
          if (!isPass) {
            if (value.isEmpty) {
              setState(() {
                controller.IsEmailValid = true;
              });
            } else {
              bool isValid = controller.validateEmail(value);
              if (isValid) {
                setState(() {
                  controller.IsEmailValid = true;
                });
              } else {
                setState(() {
                  controller.IsEmailValid = false;
                });
              }
            }
          } else {
            if (value.isEmpty) {
              setState(() {
                controller.IsPassValid = true;
              });
            } else {
              bool isValid = controller.validatePassworld(value);
              if (isValid) {
                setState(() {
                  controller.IsPassValid = true;
                });
              } else {
                setState(() {
                  controller.IsPassValid = false;
                });
              }
            }
          }
        },
      ),
    );
  }
}
