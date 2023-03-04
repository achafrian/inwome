import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class FormKonsultasi {
  String id;
  String nama;
  String usia;
  String alamat;
  String pekerjaan;
  String indentitaspelaku;
  String kronologi;

  FormKonsultasi({
    this.id = '',
    required this.nama,
    required this.usia,
    required this.alamat,
    required this.pekerjaan,
    required this.indentitaspelaku,
    required this.kronologi,
  });

  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'nama': nama,
  //       'usia': usia,
  //       'alamat': alamat,
  //       'pekerjaan': pekerjaan,
  //       'indentitaspelaku': indentitaspelaku,
  //       'kronologi': kronologi,
  //     };

  static Future createFormKonsultasi(FormKonsultasi formKonsultasi) async {
    final docForm =
        FirebaseFirestore.instance.collection('formkonsultasi').doc();

    final jsonData = {
      'id': docForm.id,
      'nama': formKonsultasi.nama,
      'usia': formKonsultasi.usia,
      'alamat': formKonsultasi.alamat,
      'pekerjaan': formKonsultasi.pekerjaan,
      'indentitaspelaku': formKonsultasi.indentitaspelaku,
      'kronologi': formKonsultasi.kronologi,
    };

    await docForm.set(jsonData);
  }
}
