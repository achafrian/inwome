import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:inwome/theme.dart';
import 'package:inwome/pages/login.dart';

// import 'package:coba/views/detailsurah.dart';
class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _OnBoarding createState() => new _OnBoarding();
}

class _OnBoarding extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black87),
        bodyTextStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
        bodyPadding: EdgeInsets.all(30));
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          image: Image.asset(
            "assets/images/onborad1.png",
            width: 350,
          ),
          title: 'Konsultasi dengan Mudah        secara Gratis',
          body:
              'Kami menyediakan layanan konsultasi untuk membantu anda menemukan solusi yang tepat untuk masalah yang sedang dihadapi',
          decoration: PageDecoration(),
        ),
        PageViewModel(
          image: Image.asset(
            "assets/images/onboard2.png",
            width: 350,
          ),
          title:
              'Kerahasiaan dan Privasi                Data Diri yang Terjamin',
          body:
              'Kami menempatkan privasi dan perlindungan data sebagai prioritas utama dalam layanan kami',
          decoration: PageDecoration(),
        ),
        PageViewModel(
          image: Image.asset(
            "assets/images/onboard3.png",
            width: 350,
          ),
          title: 'Dapatkan Informasi Melalui     Artikel Kami',
          body:
              'Mendapatkan informasi terpercaya yang dapat membantu memperluas pengetahuan anda tentang berbagai topik yang menarik',
          decoration: PageDecoration(),
          footer: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (builder) {
                return Login();
              }));
            },
            child: Text('Mulai'),
          ),
        )
      ],
      onDone: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (builder) {
          return Login();
        }));
      },
      showSkipButton: false,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: true,
      back: Icon(Icons.arrow_back),
      skip: Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      next: Icon(Icons.arrow_forward),
      done: Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Colors.grey,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}
