import 'package:flutter/material.dart';
import 'package:inwome/pages/landing.dart';
import 'package:inwome/theme.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:getwidget/getwidget.dart';

// import 'package:coba/views/detailsurah.dart';
class Formkdrt extends StatefulWidget {
  @override
  _Formkdrt createState() => new _Formkdrt();
}

class _Formkdrt extends State<Formkdrt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LandingPage(),
              ),
            );
          }, // Image tapped
          child: Container(
            padding: EdgeInsets.all(2),
            child: Image.asset(
              'assets/images/back.png',
              width: 100,
              height: 100,
            ),
          ),
        ),
        title: Text(
          "Form Konsultasi KDRT",
          style: h6_semibold.copyWith(color: neutral_10),
        ),
        toolbarHeight: 100,
        flexibleSpace: Image(
          image: AssetImage("assets/images/header.png"),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 20, left: 20, bottom: 50, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Lengkap",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Nama Lengkap",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Usia",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Usia",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Alamat",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Alamat",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Pekerjaan",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Pekerjaan",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Identitas Pelaku",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Identitas Pelaku",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Kronologis",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Kronologis",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Keterangan : Data privasi yang anda masukkan tidak akan terbaca oleh orang lain dan tersimpan dengan bijak oleh sistem",
              style: button_small_semibold.copyWith(color: neutral_90),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              minWidth: 343,
              height: 50,
              elevation: 8,
              color: primary_main,
              child: Text("Kirim Pengajuan",
                  style: button_medium_semibold.copyWith(color: neutral_10)),
              textColor: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
