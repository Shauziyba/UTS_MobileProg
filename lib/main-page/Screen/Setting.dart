// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import '../main_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        title: const Text(
          "Setting",
          style: TextStyle(color: Colors.black87, fontSize: 17),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesome5.question_circle,
              color: Colors.black,
              size: 16,
            ),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.black,
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            _buildItemSetting(
                Name: "Account preferences",
                icon: CupertinoIcons.person_circle,
                Des:
                    "Option for managing your account and experience on LinkedIn"),
            _buildItemSetting(
                Name: "Sign in & security",
                icon: Icons.lock_outlined,
                Des:
                    "Option and controls for signing in and keeping your account life"),
            _buildItemSetting(
                Name: "Visibility",
                icon: Icons.visibility_outlined,
                Des:
                    "Control who sees your activity and information on LinkedIn"),
            _buildItemSetting(
                Name: "Communications",
                icon: Icons.mail_outlined,
                Des: "Control for emails,invites, and notifications"),
            _buildItemSetting(
                Name: "Data privacy",
                icon: Icons.shield_outlined,
                Des:
                    "Control how LinkedIn uses your Information for general site use and job seeking"),
            _buildItemSetting(
                Name: "Advertising data",
                icon: Icons.ballot_outlined,
                Des:
                    "Control how LinkedIn uses your information to serve you ads"),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.maxFinite,
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Help Center",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.maxFinite,
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Privacy Policy",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.maxFinite,
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Accessibility",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.maxFinite,
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "User Agreement",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.maxFinite,
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "End User License Agreement",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 139,
              color: HexColor("#f3f2ee"),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItemSetting(
      {required String Name, required String Des, required IconData icon}) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
      child: Row(children: [
        const SizedBox(
          width: 15,
        ),
        Icon(
          icon,
          size: 20,
          color: const Color.fromARGB(157, 0, 0, 0),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                Des,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        )
      ]),
    );
  }
}
