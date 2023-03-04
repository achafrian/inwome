import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inwome/pages/landing.dart';
import 'package:inwome/pages/onboard.dart';
import 'package:inwome/pages/home_page.dart';
import 'package:inwome/pages/login.dart';
import 'package:inwome/pages/pesan.dart';
import 'package:inwome/pages/register.dart';
import 'package:inwome/pages/psikolog.dart';
import 'package:inwome/pages/artikel.dart';
import 'package:inwome/pages/profile.dart';
import 'package:inwome/pages/form_kdrt.dart';
import 'package:inwome/pages/form_kdrt.dart';
import 'package:inwome/pages/form_pelecehan.dart';
import 'package:inwome/pages/form_pembullyan.dart';
import 'package:shared_preferences/shared_preferences.dart';

int introduction = 0;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initIntroduction();
  runApp(MyApp());
}

Future initIntroduction() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  int? intro = prefs.getInt('introduction');
  print('intro : $intro');
  if (intro != null && intro == 1) {
    return introduction = 1;
  }
  prefs.setInt('introduction', 1);
}

class MyApp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inwome',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Inter'),
      // home: (_auth.currentUser != null) ? LandingPage() : Login(),
      home: introduction == 0 ? OnBoarding(title: 'Introduction') : Login(),
    );
  }
}
