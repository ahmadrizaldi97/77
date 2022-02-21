import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mart_mandiri_77/ui/screen/account.dart';
import 'package:mart_mandiri_77/ui/screen/login.dart';
import 'package:mart_mandiri_77/ui/screen/register.dart';

import '../Constants/firebase_constants.dart';
import '../ui/screen/home.dart';

class AuthController extends GetxController {
  static AuthController authInstance = Get.find();
  late Rx<User?> firebaseUser;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());

    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user != null) {
      // user is logged in
      Get.offAll(() => const Home());
    } else {
      // user is null as in user is not available or not logged in
      Get.offAll(() => LoginPage());
    }
  }

  void register(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // this is solely for the Firebase Auth Exception
      // for example : password did not match

      Get.snackbar("Error", e.message!);
      Get.snackbar(
        "Error",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      // this is temporary. you can handle different kinds of activities
      //such as dialogue to indicate what's wrong
    }
  }

  void login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // this is solely for the Firebase Auth Exception
      // for example : password did not match
      Get.snackbar("Error", e.message.toString());
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  void signOut() {
    try {
      auth.signOut();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
