import 'package:flutter/material.dart';
import 'package:inwome/pages/form_kekerasan.dart';
import 'package:inwome/theme.dart';
import 'package:inwome/pages/login.dart';

// import 'package:coba/views/detailsurah.dart';
class Register extends StatefulWidget {
  @override
  _Register createState() => new _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset("assets/images/headerlogo.png", width: 153),
            SizedBox(
              height: 24,
            ),
            Text(
              "Daftar Sekarang!",
              style: h5_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Buat akun untuk mulai menggunakan Inwome",
              style: body_medium_medium.copyWith(color: neutral_60),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Nama",
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
              "Username",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Username",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Email",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Email",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Password",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Password",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Konfirmasi Password",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Konfirmasi Password",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            MaterialButton(
              minWidth: 343,
              height: 50,
              elevation: 8,
              color: primary_main,
              child: Text("Daftar",
                  style: button_medium_semibold.copyWith(color: neutral_10)),
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 46,
            ),
            Center(
              child: Wrap(
                children: [
                  Text(
                    "Sudah punya akun?",
                    style: button_medium_semibold.copyWith(color: neutral_100),
                  ),
                  // Padding(padding: EdgeInsets.only(right: 198)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    }, // Image tapped
                    child: Container(
                      child: Text(
                        "Masuk",
                        style: button_medium_semibold.copyWith(
                            color: primary_main),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
