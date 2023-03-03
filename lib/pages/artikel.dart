import 'package:flutter/material.dart';
import 'package:inwome/theme.dart';
import 'package:inwome/pages/detail_artikel.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:getwidget/getwidget.dart';

// import 'package:coba/views/detailsurah.dart';
class Artikel extends StatefulWidget {
  @override
  _Artikel createState() => new _Artikel();
}

class _Artikel extends State<Artikel> {
  final List judul = [
    "Memahami Pelecehan Seksual dan Cara Mencegahnya",
    "Mengungkap Cerita Kecaman dan Tindakan untuk Mengatasi KDRT",
    "Mengenali Tanda-tanda dan Mengatasi Dampaknya",
    "Bully-Bully Bye: Mengatasi dan Mencegah Pembullyan di Era Digital",
    "Breaking the Silence: Menangani Pelecehan Seksual dengan Kreativitas",
    "Bully-proof Yourself: Tips Menjadi Pribadi Tangguh Terhadap Bullying",
    "Pentingnya Mengambil Tindakan dalam Masalah KDRT",
    "Sebuah Kekhawatiran Serius untuk Kesehatan Mental dan Fisik Anak",
    "Memahami Dampaknya pada Korban dan Upaya Penanganannya",
    "Mengatasi Trauma dan Memulihkan Diri Dari Kekerasan",
  ];

  final List gambar = [
    'assets/images/gmbr1.png',
    'assets/images/gmbr2.jpg',
    'assets/images/gmbr3.jpg',
    'assets/images/gmbr4.jpg',
    'assets/images/gmbr5.jpg',
    'assets/images/gmbr6.jpg',
    'assets/images/gmbr7.jpg',
    'assets/images/gmbr8.jpg',
    'assets/images/gmbr9.jpg',
    'assets/images/gmbr10.jpg',
  ];

  final List subjudul = [
    "Pelecehan Seksual",
    "Kekerasan Dalam Rumah Tangga (KDRT)",
    "Kekerasan Dibawah Umur",
    "Pembullyan",
    "Pelecehan Seksual",
    "Pembullyan",
    "Kekerasan Dalam Rumah Tangga (KDRT)",
    "Kekerasan Dibawah Umur",
    "Pelecehan Seksual",
    "Kekerasan Dibawah Umur",
  ];

  final List tentang = [
    'Seorang psikolog dengan pengalaman selama 7 tahun di bidang psikologi klinis. Ia memiliki gelar sarjana psikologi dari Universitas Indonesia dan gelar magister psikologi klinis dari Universitas Gadjah Mada. Selama karirnya sebagai psikolog, ia telah bekerja dengan berbagai jenis masalah kesehatan mental, seperti depresi, kecemasan, gangguan makan, trauma, dan gangguan kepribadian. Ia juga memiliki keahlian dalam melakukan terapi kognitif perilaku dan terapi keluarga.',
    'Seorang psikologi klinis anak dan remaja yang profesional dan bersertifikasi di bidangnya. Dengan pengalaman selama lebih dari 3 tahun di sebuah rumah sakit, telah berhasil menangani sekitar 200 anak per tahunnya yang mengalami berbagai macam gangguan mental.',
    'Seorang psikolog terapan dengan pengalaman lebih dari 10 tahun dalam bidang psikologi klinis. Ia memperoleh gelar sarjana psikologi dari Universitas Indonesia dan kemudian melanjutkan studi ke jenjang magister psikologi di Universitas Gadjah Mada. Selama bertahun-tahun, ia telah membantu klien dari berbagai latar belakang dengan masalah kesehatan mental. Ia juga memiliki pengalaman dalam memberikan terapi keluarga dan pasangan, serta membantu anak-anak dan remaja dengan masalah perkembangan.',
    'Seorang psikologi yang bekerja di sebuah klinik psikologi di Jakarta sebagai psikolog klinis. Di sana, Ia bertanggung jawab untuk menangani pasien dewasa dengan berbagai jenis masalah kesehatan mental, baik dalam bentuk terapi individu maupun kelompok. Berpengalaman dalam mengatasi masalah mental pada anak - anak maupun remaja. Selain praktik klinis, ia juga memiliki pengalaman sebagai konsultan organisasi dalam pengembangan sumber daya manusia dan manajemen konflik. ',
    'Seorang psikologi klinis yang profesional dan bersertifikasi di bidangnya. Dengan pengalaman selama lebih dari 4 tahun di sebuah rumah sakit, telah berhasil menangani sekitar 400 anak per tahunnya yang mengalami berbagai macam gangguan mental.',
    'Seorang psikolog terapan dengan spesialisasi dalam bidang psikologi klinis. Ia juga memiliki sertifikasi sebagai psikolog klinis yang dikeluarkan oleh Ikatan Psikolog Klinis Indonesia. Sebagai psikolog terapan, ia memiliki pengalaman dalam melakukan terapi kognitif dan perilaku dengan klien yang mengalami gangguan kecemasan, depresi, dan gangguan kejiwaan lainnya. Ia juga memiliki pengalaman dalam melakukan asesmen psikologis untuk kepentingan psikologis, seperti asesmen kecerdasan, asesmen kepribadian, dan asesmen neuropsikologis.',
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
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(gambar[index]),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          subjudul[index],
                          style:
                              body_small_semibold.copyWith(color: primary_main),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(judul[index],
                            style: body_medium_semibold.copyWith(
                                color: neutral_100)),
                        SizedBox(height: 10),
                        GFButton(
                            size: GFSize.MEDIUM,
                            color: primary_main,
                            text: "Selengkapnya",
                            textStyle: button_small_medium,
                            onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                        judul: judul[index],
                                        subjudul: subjudul[index],
                                        gambar: gambar[index],
                                        tentang: tentang[index]),
                                  ),
                                )),
                      ],
                    ),
                  ],
                ),
              );
            },
            itemCount: judul.length,
          ),
        ),
      ),
    );
  }
}
