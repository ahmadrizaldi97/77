import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mart_mandiri_77/Constants/const.dart';
import 'package:mart_mandiri_77/ui/screen/register.dart';
import 'package:mart_mandiri_77/ui/widget/buttonprimarywidget.dart';
import 'package:mart_mandiri_77/ui/widget/inputfieldwidget.dart';

import '../../Controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          color: primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
            child: Image.asset(
              "assets/logo.png",
              color: white,
              width: 10,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: margin,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Text(
                    logintext,
                    style: TextStyle(color: black, fontSize: normalsize),
                  ),
                  InputFieldWidget(
                    hintText: "Email",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputFieldWidget(
                    hintText: "Password",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    forgetPassword,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: red,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonPrimaryWidget(
                        text: "Daftar",
                        color: red,
                        page: "register",
                      ),
                      SizedBox(
                        width: distance,
                      ),
                      ButtonPrimaryWidget(
                        text: "Masuk",
                        color: primaryColor,
                      ),
                    ],
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Version : " + version,
                      style: textStyleNormal,
                    ),
                  ))
                ],
              )),
        )
      ],
    ));
  }
}

void _registerPage() {
  Get.to(RegisterPage());
}
