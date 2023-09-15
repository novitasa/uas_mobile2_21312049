import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Mahasiswa'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller.cAlamat,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "alamat"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cJk,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "jk"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cNama,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "nama"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cNpm,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "npm"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cProgram_studi,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Program_studi"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => controller.addMahasiswa(
                controller.cAlamat.text,
                controller.cJk.text,
                controller.cNama.text,
                controller.cNpm.text,
                controller.cProgram_studi.text,
              ),
              child: Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
