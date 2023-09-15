import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final cEmail = TextEditingController();
  final cPass = TextEditingController();

  void onClose() {
    cEmail.dispose();
    cPass.dispose();
    super.onClose();
  }
}
