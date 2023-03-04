import 'package:flutter/material.dart';
import 'package:inwome/pages/Methods.dart';
import 'package:inwome/pages/form_kekerasan.dart';
import 'package:inwome/pages/home_page.dart';
import 'package:inwome/pages/register.dart';
import 'package:inwome/theme.dart';
import 'package:inwome/pages/landing.dart';

// import 'package:coba/views/detailsurah.dart';
class Login extends StatefulWidget {
  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              }, // Image tapped
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset('assets/images/loading.png'),
                      padding: EdgeInsets.all(100),
                    ),
                  ],
                ),
              ),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset("assets/images/headerlogo.png", width: 153),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Selamat Datang!",
                    style: h5_semibold.copyWith(color: neutral_100),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Masuk sekarang untuk menikmati Inwome",
                    style: body_medium_medium.copyWith(color: neutral_60),
                  ),
                  SizedBox(
                    height: 24,
                  ),
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
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style: button_large_semibold.copyWith(color: neutral_100),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  ),
                  SizedBox(
                    height: 26,
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
                      if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
                        setState(() {
                          isLoading = true;
                        });

                        logIn(_email.text, _password.text).then((user) {
                          if (user != null) {
                            print("Login Sucessfull");
                            setState(() {
                              isLoading = false;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LandingPage()));
                          } else {
                            print("Login Failed");
                            setState(() {
                              isLoading = false;
                            });
                          }
                        });
                      } else {
                        print("Please fill form correctly");
                      }
                    },
                    child: Text(
                      'Masuk',
                      style: button_medium_bold,
                    ),
                  ),
                  SizedBox(
                    height: 340,
                  ),
                  Center(
                    child: Wrap(
                      children: [
                        Text(
                          "Belum punya akun?",
                          style: button_medium_semibold.copyWith(
                              color: neutral_100),
                        ),
                        // Padding(padding: EdgeInsets.only(right: 198)),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );
                          }, // Image tapped
                          child: Container(
                            child: Text(
                              " Daftar",
                              style: button_medium_semibold.copyWith(
                                  color: primary_main),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
