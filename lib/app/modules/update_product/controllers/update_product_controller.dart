import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProductController extends GetxController {
  late TextEditingController cAlamat;
  late TextEditingController cJk;
  late TextEditingController cNama;
  late TextEditingController cNpm;
  late TextEditingController cProgram_studi;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  get alamat => null;

  get jk => null;

  get npm => null;

  get program_studi => null;

  Future<DocumentSnapshot<Object?>> getData(String id) async {
    DocumentReference docRef = firestore.collection("mahasiswa").doc(id);

    return docRef.get();
  }

  void updateProduct(String nama, String harga, String id) async {
    DocumentReference productById = firestore.collection("mahasiswa").doc(id);

    try {
      await productById.update({
        "alamat": alamat,
        "jk": jk,
        "nama": nama,
        "npm": npm,
        "program_studi": program_studi,
      });

      Get.defaultDialog(
        title: "Berhasil",
        middleText: "berhasil menambahkan data product.",
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
        },
        textConfirm: "OK",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi kesalahan",
        middleText: "Gagal menambahkan product.",
      );
    }
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

  updateMahasiswa(String text, String text2, String text3, String text4,
      String text5, arguments) async {}
}
