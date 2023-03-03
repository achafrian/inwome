import 'package:flutter/material.dart';
import 'package:inwome/pages/landing.dart';
import 'package:inwome/pages/home_page.dart';
import 'package:inwome/pages/login.dart';
import 'package:inwome/pages/register.dart';
import 'package:inwome/pages/psikolog.dart';
import 'package:inwome/pages/artikel.dart';
import 'package:inwome/pages/pesan.dart';
import 'package:inwome/pages/profile.dart';
import 'package:inwome/pages/form_kdrt.dart';
import 'package:inwome/pages/form_kdrt.dart';
import 'package:inwome/pages/form_pelecehan.dart';
import 'package:inwome/pages/form_pembullyan.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inwome',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Inter'),
      home: LandingPage(),
    );
  }
}
