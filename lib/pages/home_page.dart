import 'package:flutter/material.dart';
import 'package:inwome/pages/form_kekerasan.dart';
import 'package:inwome/theme.dart';
import 'package:inwome/pages/detail_psikologi.dart';
import 'package:inwome/pages/psikolog.dart';
import 'package:inwome/pages/artikel.dart';
import 'package:inwome/pages/form_kdrt.dart';
import 'package:inwome/pages/form_kdrt.dart';
import 'package:inwome/pages/form_pelecehan.dart';
import 'package:inwome/pages/form_pembullyan.dart';

// import 'package:coba/views/detailsurah.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  List headline = [
    'assets/images/headline1.png',
    'assets/images/headline2.png',
    'assets/images/headline3.png',
  ];

  List kategori = [
    'assets/images/pelecehan.png',
    'assets/images/kdrt.png',
    'assets/images/kekerasan.png',
    'assets/images/pembullyan.png',
  ];

  final List judul = [
    "Eva Pratiwi, M.Psi.T",
    "Mursita Putri, S.Psi",
    "Najwa Lestari, M.Psi",
    "Nabila Suartini, M.Psi",
    "Elvina Hasanah, S.Psi",
    "Ifa Wijayanti, M.Psi.T",
  ];

  final List foto = [
    'assets/images/',
    'assets/images/',
    'assets/images/',
    'assets/images/',
    'assets/images/',
    'assets/images/',
  ];

  final List subjudul = [
    "Psikolog",
    "Psikolog",
    "Psikolog",
    "Psikolog",
    "Psikolog",
    "Psikolog",
  ];

  final List gambar = [
    'assets/images/psi1.png',
    'assets/images/psi2.png',
    'assets/images/psi3.png',
    'assets/images/psi4.png',
    'assets/images/psi5.png',
    'assets/images/psi6.png',
  ];

  final List tentang = [
    'Seorang psikolog dengan pengalaman selama 7 tahun di bidang psikologi klinis. Ia memiliki gelar sarjana psikologi dari Universitas Indonesia dan gelar magister psikologi klinis dari Universitas Gadjah Mada. Selama karirnya sebagai psikolog, ia telah bekerja dengan berbagai jenis masalah kesehatan mental, seperti depresi, kecemasan, gangguan makan, trauma, dan gangguan kepribadian. Ia juga memiliki keahlian dalam melakukan terapi kognitif perilaku dan terapi keluarga.',
    'Seorang psikologi klinis anak dan remaja yang profesional dan bersertifikasi di bidangnya. Dengan pengalaman selama lebih dari 3 tahun di sebuah rumah sakit, telah berhasil menangani sekitar 200 anak per tahunnya yang mengalami berbagai macam gangguan mental.',
    'Seorang psikolog terapan dengan pengalaman lebih dari 10 tahun dalam bidang psikologi klinis. Ia memperoleh gelar sarjana psikologi dari Universitas Indonesia dan kemudian melanjutkan studi ke jenjang magister psikologi di Universitas Gadjah Mada. Selama bertahun-tahun, ia telah membantu klien dari berbagai latar belakang dengan masalah kesehatan mental. Ia juga memiliki pengalaman dalam memberikan terapi keluarga dan pasangan, serta membantu anak-anak dan remaja dengan masalah perkembangan.',
    'Seorang psikologi yang bekerja di sebuah klinik psikologi di Jakarta sebagai psikolog klinis. Di sana, Ia bertanggung jawab untuk menangani pasien dewasa dengan berbagai jenis masalah kesehatan mental, baik dalam bentuk terapi individu maupun kelompok. Berpengalaman dalam mengatasi masalah mental pada anak - anak maupun remaja. Selain praktik klinis, ia juga memiliki pengalaman sebagai konsultan organisasi dalam pengembangan sumber daya manusia dan manajemen konflik. ',
    'Seorang psikologi klinis yang profesional dan bersertifikasi di bidangnya. Dengan pengalaman selama lebih dari 4 tahun di sebuah rumah sakit, telah berhasil menangani sekitar 400 anak per tahunnya yang mengalami berbagai macam gangguan mental.',
    'Seorang psikolog terapan dengan spesialisasi dalam bidang psikologi klinis. Ia juga memiliki sertifikasi sebagai psikolog klinis yang dikeluarkan oleh Ikatan Psikolog Klinis Indonesia. Sebagai psikolog terapan, ia memiliki pengalaman dalam melakukan terapi kognitif dan perilaku dengan klien yang mengalami gangguan kecemasan, depresi, dan gangguan kejiwaan lainnya. Ia juga memiliki pengalaman dalam melakukan asesmen psikologis untuk kepentingan psikologis, seperti asesmen kecerdasan, asesmen kepribadian, dan asesmen neuropsikologis.',
  ];

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
              "Konsultasikan                "
              "Permasalahan Anda!",
              style: h5_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      width: 343,
                    ),
                  ),
                  hintText: 'Search'),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: headline.length,
                itemBuilder: (context, index) => Container(
                    height: 100,
                    width: 320,
                    margin: const EdgeInsets.all(2),
                    child: new Image.asset(headline[index])),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Kategori",
              style: h6_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(
              height: 12,
            ),
            Wrap(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Formpelecehan(),
                      ),
                    );
                  }, // Image tapped
                  child: Container(
                    padding: EdgeInsets.only(right: 6, left: 6),
                    child: Image.asset(
                      'assets/images/pelecehan.png',
                      fit: BoxFit.fill,
                      width: 74,
                      height: 112,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Formkdrt(),
                      ),
                    );
                  }, // Image tapped
                  child: Container(
                    padding: EdgeInsets.only(right: 6, left: 6),
                    child: Image.asset(
                      'assets/images/kdrt.png',
                      fit: BoxFit.fill,
                      width: 74,
                      height: 112,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Formkekerasan(),
                      ),
                    );
                  }, // Image tapped
                  child: Container(
                    padding: EdgeInsets.only(right: 2, left: 2),
                    child: Image.asset(
                      'assets/images/kekerasan.png',
                      fit: BoxFit.fill,
                      width: 81,
                      height: 112,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Formpembullyan(),
                      ),
                    );
                  }, // Image tapped
                  child: Container(
                    padding: EdgeInsets.only(right: 6, left: 6),
                    child: Image.asset(
                      'assets/images/pembullyan.png',
                      fit: BoxFit.fill,
                      width: 74,
                      height: 112,
                    ),
                  ),
                ),
                // Image.asset("assets/images/pelecehan.png", width: 74),
                // Padding(padding: EdgeInsets.all(8)),
                // Image.asset("assets/images/kdrt.png", width: 74),
                // Padding(padding: EdgeInsets.all(8)),
                // Image.asset("assets/images/kekerasan.png", width: 74),
                // Padding(padding: EdgeInsets.all(8)),
                // Image.asset("assets/images/pembullyan.png", width: 74),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Wrap(
              children: [
                Text(
                  "Psikolog",
                  style: h6_semibold.copyWith(color: neutral_100),
                ),
                Padding(padding: EdgeInsets.only(right: 198)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Psikolog(),
                      ),
                    );
                  }, // Image tapped
                  child: Container(
                    child: Text(
                      "Lihat semua",
                      style: body_small_semibold.copyWith(color: primary_main),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
