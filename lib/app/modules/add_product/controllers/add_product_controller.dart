import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  late TextEditingController cAlamat;
  late TextEditingController cJk;
  late TextEditingController cNama;
  late TextEditingController cNpm;
  late TextEditingController cProgram_studi;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addProduct(String alamat, String jk, String nama, String npm,
      String program_studi) async {
    CollectionReference products = firestore.collection("mahasiswa");

    try {
      await products.add({
        "alamat": alamat,
        "jk": jk,
        "nama": nama,
        "npm": npm,
        "program_studi": program_studi,
      });
      Get.defaultDialog(
          title: "Berhasil",
          middleText: "Berhasil menyimpan data produk",
          onConfirm: () {
            cAlamat.clear();
            cJk.clear();
            cNama.clear();
            cNpm.clear();
            cProgram_studi.clear();
            Get.back();
            Get.back();
            Get.back();
            Get.back();
            Get.back();
            textConfirm:
            "OK";
          });
    } catch (e) {}
  }

  @override
  void onInit() {
    // TODO: implement onInit
    cAlamat = TextEditingController();
    cJk = TextEditingController();
    cNama = TextEditingController();
    cNpm = TextEditingController();
    cProgram_studi = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    cAlamat.dispose();
    cJk.dispose();
    cNama.dispose();
    cNpm.dispose();
    cProgram_studi.dispose();
    super.onClose();
  }

  addMahasiswa(
      String text, String text2, String text3, String text4, String text5) {}
}
