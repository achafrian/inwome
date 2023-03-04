import 'package:flutter/material.dart';
import 'package:inwome/pages/Methods.dart';
import 'package:inwome/theme.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/getwidget.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:inwome/pages/landing.dart';

class Profile extends StatefulWidget {
  final type;
  Profile(this.type);

  @override
  Profiles createState() => Profiles(this.type);
}

class Profiles extends State<Profile> {
  var _image;
  var imagePicker;
  var type;

  Profiles(this.type);

  @override
  void initState() {
    super.initState();
    imagePicker = new ImagePicker();
  }

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
          "Profile",
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
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(110 / 2),
                child: Material(
                  elevation: 5,
                  child: Container(
                      width: 110,
                      height: 110,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/org6.png"),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Nama",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              readOnly: true,
              obscureText: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: neutral_60)),
                filled: false,
                hintText: "Aria Pratama Effendi",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Username",
              style: button_large_semibold.copyWith(color: neutral_100),
            ),
            SizedBox(height: 10),
            TextFormField(
              readOnly: true,
              obscureText: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: neutral_60)),
                hintText: "dahlah",
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
              readOnly: true,
              obscureText: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: neutral_60)),
                hintText: "dahlah08@gmail.com",
                contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(height: 60),
            MaterialButton(
              minWidth: 343,
              height: 50,
              elevation: 8,
              color: primary_main,
              child: Text("Logout",
                  style: button_medium_semibold.copyWith(color: neutral_10)),
              textColor: Colors.white,
              onPressed: () {
                logOut(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
