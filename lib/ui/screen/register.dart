import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mart_mandiri_77/Constants/const.dart';
import 'package:mart_mandiri_77/ui/widget/buttonprimarywidget.dart';
import 'package:mart_mandiri_77/ui/widget/inputfieldwidget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text("Daftar"),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: margin,
        child: Column(
          children: [
            InputFieldWidget(
              hintText: "Nama",
            ),
            InputFieldWidget(
              hintText: "Email",
            ),
            InputFieldWidget(
              hintText: "Nomor Hp",
            ),
            InputFieldWidget(
              hintText: "Password",
            ),
            InputFieldWidget(
              hintText: "Konfirmasi Password",
            ),
            SizedBox(
              height: 50,
            ),
            ButtonPrimaryWidget(
              text: "Daftar",
              color: red,
            ),
          ],
        ),
      ),
    );
  }
}
