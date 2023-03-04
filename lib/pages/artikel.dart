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
    'Pelecehan seksual adalah tindakan yang merugikan dan tidak diinginkan terhadap seseorang secara seksual. Tindakan ini dapat terjadi di mana saja, baik di tempat kerja, sekolah, maupun dalam hubungan pribadi. Pelecehan seksual dapat berupa tindakan fisik, verbal, atau non-verbal yang memperlihatkan perilaku yang tidak pantas.\n\nPelecehan seksual seringkali menghasilkan efek yang traumatis bagi korban dan dapat berdampak pada kesehatan fisik dan mental mereka. Oleh karena itu, sangat penting bagi kita untuk memahami apa itu pelecehan seksual dan cara mencegahnya.\n\nTindakan pelecehan seksual dapat terjadi dalam berbagai bentuk, seperti komentar atau lelucon yang tidak pantas, sentuhan fisik yang tidak diinginkan, atau pemaksaan untuk melakukan aktivitas seksual. Pelecehan seksual juga dapat terjadi secara verbal atau non-verbal, termasuk melalui pesan teks atau media sosial.\n\nCara untuk mencegah pelecehan seksual meliputi:\n\n1. Menghindari situasi yang berpotensi memicu tindakan pelecehan seksual, seperti berada di lingkungan yang tidak aman atau menghindari interaksi dengan orang-orang yang memiliki perilaku tidak pantas.\n2. Mendidik diri sendiri tentang apa itu pelecehan seksual dan mengenali tanda-tanda pelecehan seksual, sehingga kita dapat mengambil tindakan pencegahan atau melaporkan tindakan yang tidak pantas.\n3. Menciptakan lingkungan yang aman dan mendukung untuk orang-orang di sekitar kita, dan menyediakan ruang untuk membahas dan melaporkan tindakan yang tidak pantas.\n4. Mengajarkan anak-anak tentang bahaya pelecehan seksual dan membantu mereka memahami hak-hak mereka sebagai individu.\n\nJika Anda atau seseorang yang Anda kenal mengalami pelecehan seksual, penting untuk segera mengambil tindakan untuk melaporkannya dan mendapatkan bantuan dari pihak yang berwenang atau konselor.',
    'Kekerasan dalam rumah tangga atau KDRT seringkali menjadi masalah yang terabaikan, bahkan di masyarakat yang modern dan maju. KDRT dapat terjadi pada siapa saja, tidak peduli usia, jenis kelamin, atau status sosial. Oleh karena itu, penting bagi kita untuk memahami KDRT dan tindakan yang harus diambil untuk mengatasinya.\n\nKetika seseorang mengalami KDRT, mereka mungkin merasa malu dan takut untuk membicarakannya dengan orang lain. Mereka mungkin merasa bahwa mereka tidak dapat meminta bantuan atau tidak yakin apakah situasi mereka dianggap sebagai KDRT atau tidak. Sebagai masyarakat, kita harus mengajarkan dan memberikan dukungan kepada mereka yang mengalami KDRT.\n\nTanda-tanda KDRT bisa berupa cedera fisik seperti memar, luka, atau pembengkakan, tapi juga bisa terlihat dari tanda-tanda psikologis seperti perubahan perilaku, rasa takut atau gelisah, serta isolasi dari keluarga dan teman-teman. Jika Anda melihat tanda-tanda ini pada seseorang, tanyakan mereka apa yang terjadi dan berikan dukungan dan bantuan.\n\nAda beberapa tindakan yang bisa dilakukan untuk membantu seseorang yang mengalami KDRT, antara lain:\n\n1. Menawarkan dukungan dan mendengarkan mereka dengan penuh perhatian tanpa menyalahkan atau menghakimi.\n2. Mendorong mereka untuk mendapatkan bantuan dari pihak yang berwenang atau organisasi yang berkompeten dalam menangani masalah KDRT.\n3. Menjaga privasi dan keamanan mereka dengan meminta persetujuan sebelum membicarakan masalah mereka dengan orang lain.\n4. Meningkatkan kesadaran masyarakat tentang KDRT dan mempromosikan toleransi nol terhadap tindakan kekerasan.',
    'Kekerasan di bawah umur adalah masalah serius yang sering terjadi di seluruh dunia. Kekerasan dapat merusak masa depan anak-anak dan remaja, dan dapat meninggalkan bekas luka yang dalam di dalam diri mereka. Mereka yang mengalami kekerasan di bawah umur sering merasa takut, cemas, dan terisolasi, dan dapat mengalami masalah psikologis yang serius.\n\nTanda-tanda kekerasan di bawah umur dapat beragam, antara lain: anak-anak yang sering terluka, memar, atau mempunyai luka di daerah genital; mengalami perubahan perilaku seperti terlihat cemas, takut, atau muncul perilaku yang tidak biasa; dan anak-anak yang menghindari atau merasa takut terhadap orang yang melakukan kekerasan.\n\nKekerasan di bawah umur dapat terjadi dalam berbagai bentuk, termasuk kekerasan fisik, seksual, psikologis, dan eksploitasi. Anak-anak yang mengalami kekerasan di bawah umur dapat mengalami kerugian jangka panjang pada kesehatan fisik dan mental mereka. Dampak psikologis dari kekerasan di bawah umur dapat mencakup depresi, kecemasan, kesulitan tidur, masalah kesehatan mental lainnya, serta perilaku berisiko seperti penggunaan narkoba atau alkohol.\n\nUntuk mengatasi masalah kekerasan di bawah umur, ada beberapa tindakan yang dapat dilakukan, antara lain:\n\n1. Meningkatkan kesadaran masyarakat tentang kekerasan di bawah umur dan menekankan pentingnya pendidikan untuk mencegah tindakan kekerasan tersebut.\n2. Menyediakan dukungan emosional dan sumber daya bagi anak-anak yang mengalami kekerasan, termasuk melaporkan tindakan kekerasan ke pihak yang berwenang dan mencari dukungan dari keluarga dan teman-teman.\n3. Melakukan kampanye untuk menghentikan kekerasan di bawah umur dan mendesak pihak berwenang untuk menindaklanjuti tindakan kekerasan dan memberikan perlindungan bagi anak-anak.',
    'Pembullyan, baik di dunia nyata maupun maya, merupakan masalah yang serius dan dapat memiliki dampak jangka panjang pada kesehatan mental dan fisik korban. Pembullyan dapat terjadi pada siapa saja, baik anak-anak, remaja, maupun orang dewasa, dan dapat terjadi di lingkungan sekolah, tempat kerja, atau bahkan di media sosial.\n\nDalam era digital saat ini, pembullyan di media sosial semakin meningkat dan sulit diatasi. Korban pembullyan di media sosial sering kali merasa terisolasi dan tidak tahu bagaimana cara mengatasinya. Oleh karena itu, penting bagi kita untuk mengatasi dan mencegah pembullyan di era digital.\n\nBerikut adalah beberapa tips untuk mengatasi dan mencegah pembullyan di era digital:\n\n1. Jangan merespons dengan balasan yang sama. Jika kamu dibully di media sosial, jangan membalas dengan kata-kata atau tindakan yang sama. Hal ini hanya akan membuat situasi semakin buruk dan membuka peluang untuk pembullyan yang lebih parah.\n2. Blokir dan laporkan pembully. Jika kamu dibully di media sosial, blokir dan laporkan akun pembully tersebut ke platform yang bersangkutan. Platform media sosial biasanya memiliki fitur untuk melaporkan tindakan pembullyan.\n3. Hindari mengunggah informasi pribadi di media sosial. Jangan mengunggah informasi pribadi seperti alamat rumah, nomor telepon, atau informasi lain yang dapat digunakan oleh pembully untuk melacak atau mengganggu kamu.\n4. Ciptakan komunitas yang positif dan mendukung. Bergabunglah dengan komunitas yang positif dan mendukung di media sosial atau di lingkungan sekitar. Dalam komunitas tersebut, kamu dapat menemukan teman yang sehati dan saling mendukung.\n5. Edukasi tentang pentingnya menghargai perbedaan. Sebagai masyarakat yang beradab, kita harus menghargai perbedaan dan memperlakukan orang lain dengan baik. Edukasi anak-anak dan remaja tentang pentingnya menghargai perbedaan dan memperlakukan orang lain dengan baik dapat mencegah terjadinya pembullyan.',
    'Pelecehan seksual adalah masalah serius yang dapat terjadi di mana saja, baik di tempat kerja, di lingkungan pendidikan, maupun di rumah. Korban pelecehan seksual seringkali merasa takut dan malu untuk membicarakannya. Namun, dengan menggunakan kreativitas, kita dapat mengatasi pelecehan seksual dan memberikan dukungan kepada korban.\n\nBerikut adalah beberapa tips untuk mengatasi pelecehan seksual dengan kreativitas:\n\n1. Buat karya seni. Buat karya seni, seperti lukisan, puisi, atau lagu, untuk mengekspresikan perasaanmu terkait pelecehan seksual. Karya seni dapat membantu memperkuat perasaanmu dan memberikan harapan pada diri sendiri.\n2. Bergabung dengan komunitas. Bergabunglah dengan komunitas yang terkait dengan pelecehan seksual. Komunitas ini dapat memberikan dukungan dan memberi tahu kamu bahwa kamu tidak sendirian.\n3. Pelajari hakmu. Pelajari hakmu sebagai korban pelecehan seksual. Pelajari apa yang dapat kamu lakukan untuk melindungi diri sendiri dan apa yang dapat dilakukan untuk menindak tindakan pelecehan seksual.\n4. Gunakan media sosial. Gunakan media sosial untuk menyebarkan kesadaran tentang pelecehan seksual dan mengajak orang lain untuk mendukung gerakan anti pelecehan seksual.\n5. Bicarakan masalahmu. Bicaralah dengan orang yang dapat dipercaya, seperti keluarga, teman dekat, atau profesional kesehatan mental. Bicara tentang masalahmu dapat membantu kamu merasa lebih baik dan menemukan solusi yang tepat.\n\nDengan menggunakan kreativitas, kita dapat menangani pelecehan seksual dan memberikan dukungan kepada korban. Pelecehan seksual bukanlah sesuatu yang harus dihadapi sendiri. Ingatlah bahwa kamu tidak sendirian dan selalu ada orang yang siap membantu. Breaking the silence dan jadilah pahlawan bagi dirimu dan orang lain!',
    'Bullying adalah masalah serius yang dapat terjadi di lingkungan mana saja, termasuk di sekolah, tempat kerja, bahkan di rumah. Korban bullying seringkali merasa sendirian, terisolasi, dan merasa tidak berdaya untuk melawan. Namun, ada cara untuk mengatasi dan melawan bullying dengan menjadi pribadi yang tangguh.\n\nBerikut adalah beberapa tips untuk menjadi pribadi yang tangguh terhadap bullying:\n\n1. Terima diri sendiri. Terima diri sendiri dan jangan membiarkan kata-kata atau tindakan bullying merusak harga diri kamu. Ingatlah bahwa kamu berharga dan pantas mendapat perlakuan yang baik dari orang lain.\n2. Kenali ciri-ciri bullying. Pelajari ciri-ciri bullying, baik secara fisik maupun verbal, sehingga kamu dapat mengidentifikasi tindakan bullying dan mengambil tindakan yang tepat.\n3. Jangan terlalu memikirkan pendapat orang lain. Jangan terlalu memikirkan apa yang orang lain katakan tentangmu atau mengkritikmu. Fokuslah pada hal-hal positif dan jangan biarkan kritik negatif membuatmu terpuruk.\n4. Temukan dukungan dari orang-orang terdekat. Temukan dukungan dari orang-orang terdekat, seperti keluarga atau teman dekat. Dukungan dari orang-orang terdekat dapat membantu kamu merasa lebih percaya diri dan siap menghadapi bullying.\n5. Gunakan humor. Gunakan humor untuk mengatasi bullying. Kadang-kadang, membalas bullying dengan humor dapat membuat pembully kalah semangat dan merasa terpukul.\n6. Bicarakan masalahmu. Jangan ragu untuk bicara dengan seseorang yang dapat dipercaya tentang masalahmu. Bicarakan dengan orang dewasa, teman dekat, atau profesional kesehatan mental. Bicara tentang masalahmu dapat membantu kamu merasa lebih baik dan menemukan solusi yang tepat.\n\nDengan menerapkan tips di atas, kamu dapat menjadi pribadi yang tangguh terhadap bullying. Ingatlah bahwa kamu tidak sendirian dan selalu ada orang-orang yang siap membantu. Jangan biarkan bullying merusak harga diri kamu. Bully-proof yourself dan jadilah pribadi yang tangguh!',
    'Kekerasan dalam rumah tangga (KDRT) adalah masalah serius yang dapat terjadi pada siapa saja, tanpa memandang usia, jenis kelamin, atau latar belakang sosial. KDRT terjadi ketika seseorang dalam rumah tangga menjadi korban kekerasan fisik, psikologis, seksual, atau ekonomi oleh pasangan atau anggota keluarga lainnya.\n\nTidak ada alasan yang dapat membenarkan tindakan kekerasan dalam rumah tangga. Kekerasan ini dapat menyebabkan luka fisik dan psikologis yang serius pada korban, serta mempengaruhi kesehatan mental dan fisik mereka dalam jangka panjang. Korban KDRT juga seringkali merasa takut, cemas, dan malu untuk meminta bantuan.\n\nNamun, penting bagi mereka untuk mengetahui bahwa mereka tidak sendirian dan ada bantuan yang tersedia. Ada berbagai organisasi dan lembaga yang dapat memberikan dukungan dan bantuan kepada korban KDRT, seperti pusat krisis, klinik kesehatan, dan layanan konseling.\n\nTidak hanya itu, kita semua dapat membantu mencegah KDRT dengan tidak menjadi pelaku kekerasan, serta memberikan dukungan dan bantuan kepada korban KDRT. Kita dapat memperhatikan lingkungan sekitar kita dan melaporkan tindakan kekerasan yang kita lihat atau duga terjadi.\n\nKDRT adalah masalah serius yang membutuhkan perhatian dan tindakan untuk memecahinya. Mari bersama-sama berjuang melawan kekerasan dalam rumah tangga dan memberikan dukungan kepada korban KDRT.',
    'Kekerasan dibawah umur adalah kekerasan yang terjadi pada anak-anak atau remaja, yang biasanya dilakukan oleh orang dewasa atau sesama teman sebaya. Kekerasan ini dapat berupa kekerasan fisik, psikologis, atau seksual, serta dapat terjadi di lingkungan keluarga, sekolah, atau tempat umum.\n\nKekerasan dibawah umur dapat memiliki dampak yang serius pada kesehatan mental dan fisik anak-anak. Anak-anak yang menjadi korban kekerasan cenderung mengalami masalah kesehatan mental seperti depresi, kecemasan, dan gangguan stres pascatrauma. Selain itu, mereka juga dapat mengalami luka fisik, luka-luka psikologis, dan bahkan kematian.\n\nPenting untuk memperhatikan tanda-tanda kekerasan pada anak-anak, seperti perubahan perilaku, penarikan diri, atau ketidaknyamanan fisik. Jika kita mencurigai adanya tanda-tanda kekerasan pada anak, kita harus segera mengambil tindakan untuk membantu mereka.\n\nAda berbagai lembaga dan organisasi yang dapat memberikan bantuan dan dukungan kepada anak-anak yang menjadi korban kekerasan, seperti pusat krisis, layanan kesehatan mental, atau kepolisian. Selain itu, sebagai orang dewasa, kita juga dapat berperan sebagai pelindung anak-anak dengan memperhatikan lingkungan sekitar dan melaporkan kekerasan yang kita duga terjadi.\n\nKekerasan dibawah umur adalah kekhawatiran serius yang dapat berdampak pada kesehatan mental dan fisik anak-anak. Mari bersama-sama membantu anak-anak yang menjadi korban kekerasan dan memperjuangkan hak mereka untuk hidup dalam lingkungan yang aman dan sehat.',
    'Pelecehan seksual merupakan tindakan yang tidak dapat diterima dan dapat memberikan dampak psikologis yang serius pada korban. Salah satu contoh kasus pelecehan seksual adalah kasus yang melibatkan seorang pengusaha terkenal yang melakukan pelecehan terhadap beberapa karyawannya. Korban mengalami tekanan psikologis dan trauma yang cukup berat akibat tindakan tersebut.\n\nPihak kepolisian melakukan tindakan cepat untuk menangani kasus tersebut dengan memeriksa saksi-saksi dan meminta keterangan dari korban. Korban juga diberikan dukungan dan pendampingan oleh keluarga, teman, serta psikolog profesional untuk membantunya pulih dari dampak pelecehan yang dialaminya.\n\nPada akhirnya, pelaku diadili dan diberikan hukuman yang sesuai dengan perbuatannya. Namun, upaya pencegahan dan edukasi terus dilakukan untuk mencegah terjadinya kasus pelecehan seksual di masa depan.',
    'Anak yang mengalami kekerasan dibawah umur membutuhkan perhatian khusus dalam pemulihan dan penyembuhan trauma yang dialaminya. Orang dewasa di sekitar anak harus memahami cara-cara yang tepat untuk memberikan dukungan dan edukasi bagi anak yang mengalami kekerasan agar mereka dapat memulihkan diri dengan baik.\n\nBeberapa cara yang dapat dilakukan adalah dengan memberikan dukungan emosional dan psikologis, membantu anak memahami bahwa kekerasan bukanlah salah mereka, memberikan edukasi tentang hak anak dan kesetaraan gender, serta membantu anak untuk membangun kembali kepercayaan diri dan rasa aman.\n\nPenting bagi kita sebagai masyarakat untuk berperan aktif dalam membantu anak-anak yang mengalami kekerasan dibawah umur agar mereka dapat pulih dengan baik dan membangun masa depan yang lebih baik.',
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
