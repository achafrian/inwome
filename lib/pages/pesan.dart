import 'package:flutter/material.dart';
import 'package:inwome/theme.dart';
import 'package:flutter_tawk/flutter_tawk.dart';

class Pesan extends StatelessWidget {
  const Pesan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Tawk(
          directChatLink:
              'https://tawk.to/chat/64020ddc4247f20fefe3cc5f/1gqk0cadl',
          visitor: TawkVisitor(
            name: 'Ayoub AMINE',
            email: 'ayoubamine2a@gmail.com',
          ),
          onLoad: () {
            print('Hello Tawk!');
          },
          onLinkTap: (String url) {
            print(url);
          },
          placeholder: const Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
