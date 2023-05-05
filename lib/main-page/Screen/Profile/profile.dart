import 'package:flutter_auth/main-page/Screen/Profile/searchPrfile.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../main_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black87,
              ))
        ],
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchProfile()),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: const [
                Icon(Icons.search, size: 15, color: Colors.black87),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.black87, fontSize: 12),
                )
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
      ),
      body: Container(
        color: HexColor("#f3f2ee"),
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView(
          children: [
            Column(
              children: [
                Stack(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
