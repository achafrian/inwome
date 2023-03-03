import 'package:flutter/material.dart';
import 'package:inwome/pages/landing.dart';
import 'package:inwome/theme.dart';

class DetailPage extends StatelessWidget {
  final String judul;
  final String subjudul;
  final String gambar;
  final String tentang;

  const DetailPage(
      {Key? key,
      required this.judul,
      required this.subjudul,
      required this.gambar,
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
          "Artikel",
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
        padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              subjudul,
              style: body_medium_semibold.copyWith(color: primary_main),
            ),
            SizedBox(
              height: 5,
            ),
            Text(judul,
                style: body_large_semibold.copyWith(color: neutral_100)),
            SizedBox(height: 10),
            SizedBox(
              height: 18,
            ),
            Image.asset(gambar),
            SizedBox(height: 30),
            Text(
              tentang,
              style: body_medium_reguler.copyWith(color: neutral_80),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
