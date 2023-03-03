import 'package:flutter/material.dart';
import 'package:inwome/theme.dart';
import 'package:inwome/pages/detail_artikel.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:getwidget/getwidget.dart';

// import 'package:coba/views/detailsurah.dart';
class Pesan extends StatefulWidget {
  @override
  _Pesan createState() => new _Pesan();
}

class _Pesan extends State<Pesan> {
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
          "Pesan",
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
