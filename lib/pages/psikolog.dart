import 'package:flutter/material.dart';
import 'package:inwome/theme.dart';
import 'package:inwome/pages/detail_psikologi.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:getwidget/getwidget.dart';

// import 'package:coba/views/detailsurah.dart';
class Psikolog extends StatefulWidget {
  @override
  _Psikolog createState() => new _Psikolog();
}

class _Psikolog extends State<Psikolog> {
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
    'assets/images/org1.png',
    'assets/images/org2.png',
    'assets/images/org3.png',
    'assets/images/org4.png',
    'assets/images/org5.png',
    'assets/images/org6.png',
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

  final List ket = [
    'assets/images/ket1.png',
    'assets/images/ket2.png',
    'assets/images/ket3.png',
    'assets/images/ket4.png',
    'assets/images/ket5.png',
    'assets/images/ket6.png',
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
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {}, // Image tapped
          child: Container(
            padding: EdgeInsets.all(2),
            child: Image.asset(
              'assets/images/kotakbiru.png',
              width: 10,
              height: 10,
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GFCard(
                margin: EdgeInsets.all(6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                boxFit: BoxFit.cover,
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage(foto[index]),
                  ),
                  titleText: judul[index],
                  subTitleText: subjudul[index],
                ),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                        size: GFSize.MEDIUM,
                        color: primary_main,
                        text: "Lebih Dekat",
                        textStyle: button_small_medium,
                        child: Image.asset(gambar[index]),
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                    judul: judul[index],
                                    subjudul: subjudul[index],
                                    gambar: gambar[index],
                                    foto: foto[index],
                                    ket: ket[index],
                                    tentang: tentang[index]),
                              ),
                            )),
                  ],
                ),
                content: Image.asset(gambar[index]),
              );
            },
            itemCount: judul.length,
          ),
        ),
      ),
    );
  }
}
