import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUpView'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              controller: controller.cEmail,
              decoration: InputDecoration(
                labelText: "email",
              ),
            ),
            TextField(
              controller: controller.cPass,
              decoration: InputDecoration(
                labelText: "password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  cAuth.signup(controller.cEmail.text, controller.cPass.text),
              child: Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
