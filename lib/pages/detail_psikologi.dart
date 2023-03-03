import 'package:flutter/material.dart';
import 'package:inwome/pages/landing.dart';
import 'package:inwome/theme.dart';

class DetailPage extends StatelessWidget {
  final String judul;
  final String subjudul;
  final String gambar;
  final String foto;
  final String ket;
  final String tentang;

  const DetailPage(
      {Key? key,
      required this.judul,
      required this.subjudul,
      required this.gambar,
      required this.foto,
      required this.ket,
      required this.tentang})
      : super(key: key);

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
          "Psikolog",
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
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              foto,
              width: 315,
            ),
            SizedBox(height: 16),
            Text(
              judul,
              style: h6_semibold.copyWith(color: neutral_100),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              subjudul,
              style: body_large_reguler.copyWith(color: neutral_60),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              gambar,
              fit: BoxFit.contain,
              width: 315,
            ),
            Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                tentang,
                style: body_medium_reguler.copyWith(color: neutral_80),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              ket,
              fit: BoxFit.contain,
              width: 315,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
