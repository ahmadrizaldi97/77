import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mart_mandiri_77/Constants/const.dart';
import 'package:mart_mandiri_77/Constants/firebase_constants.dart';
import 'package:mart_mandiri_77/routes/app_pages.dart';
import 'package:mart_mandiri_77/ui/screen/register.dart';

import 'Controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  firebaseInitialization.then((value) {
    // we are going to inject the auth controller over here!
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: primaryColor,
          buttonTheme: ButtonThemeData(
              buttonColor: primaryColor, textTheme: ButtonTextTheme.primary)),
      getPages: AppPages.list,
      home: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
