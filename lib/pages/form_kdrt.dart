import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inwome/models/form_konsultasi.dart';
import 'package:inwome/pages/chatroom.dart';
import 'package:inwome/pages/landing.dart';
import 'package:inwome/theme.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:getwidget/getwidget.dart';

// import 'package:coba/views/detailsurah.dart';
class Formkdrt extends StatefulWidget {
  @override
  _Formkdrt createState() => new _Formkdrt();
}

class _Formkdrt extends State<Formkdrt> {
  Map<String, dynamic>? userMap;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final _email = TextEditingController();
  final _nama = TextEditingController();
  final _usia = TextEditingController();
  final _alamat = TextEditingController();
  final _pekerjaan = TextEditingController();
  final _indentitaspelaku = TextEditingController();
  final _kronologi = TextEditingController();

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance!.addObserver(this);
    setStatus("Online");
  }

  void setStatus(String status) async {
    await _firestore.collection('users').doc(_auth.currentUser!.uid).update({
      "status": status,
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // online
      setStatus("Online");
    } else {
      // offline
      setStatus("Offline");
    }
  }

  String chatRoomId(String user1, String user2) {
    if (user1[0].toLowerCase().codeUnits[0] >
        user2.toLowerCase().codeUnits[0]) {
      return "$user1$user2";
    } else {
      return "$user2$user1";
    }
  }

  void getDataUser() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

    await _firestore
        .collection('users')
        .where("email", isEqualTo: _email.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
      });
      print(userMap);
    });
  }

  void _showSimpleDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Image.asset('assets/images/acc.png')),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primary_main,
                  onPrimary: neutral_10,
                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  minimumSize: Size(343, 50),
                ),
                onPressed: () {
                  getDataUser();
                  String roomId = chatRoomId(
                      _auth.currentUser!.displayName!, userMap!['name']);
                  print(roomId);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ChatRoom(
                        chatRoomId: roomId,
                        userMap: userMap!,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Selesai',
                  style: button_medium_bold,
                ),
              ),
            )
          ],
        );
      },
    );
  }

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
          "Form Konsultasi KDRT",
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
        padding: EdgeInsets.only(right: 20, left: 20, bottom: 50, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _nama,
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
              "Email",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _email,
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
              "Usia",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _usia,
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Usia",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Alamat",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _alamat,
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Alamat",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Pekerjaan",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _pekerjaan,
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Pekerjaan",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Identitas Pelaku",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _indentitaspelaku,
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Identitas Pelaku",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Kronologis",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _kronologi,
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Kronologis",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Keterangan : Data privasi yang anda masukkan tidak akan terbaca oleh orang lain dan tersimpan dengan bijak oleh sistem",
              style: button_small_semibold.copyWith(color: neutral_90),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: primary_main,
                onPrimary: neutral_10,
                shadowColor: Color.fromARGB(255, 0, 0, 0),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                minimumSize: Size(343, 50),
              ),
              onPressed: () {
                FormKonsultasi formKonsultasi = FormKonsultasi(
                  nama: _nama.text,
                  usia: _usia.text,
                  alamat: _alamat.text,
                  pekerjaan: _pekerjaan.text,
                  indentitaspelaku: _indentitaspelaku.text,
                  kronologi: _kronologi.text,
                );
                FormKonsultasi.createFormKonsultasi(formKonsultasi);
                _showSimpleDialog(context);
              },
              child: Text(
                'Kirim Pengajuan',
                style: button_medium_bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
