// ignore: file_names
// ignore: file_names
import 'package:project_uts/main-page/Screen/Profile/profile.dart';
import 'package:project_uts/main-page/Screen/qrcode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Data/dummy_data.dart';

// ignore: must_be_immutable
class SearchProfile extends StatelessWidget {
  List<String> history = recentsearch;
  List<String> recent = trySearch;

  SearchProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black45,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const TextField(
          decoration: InputDecoration(
            hintText: "Search",
          ),
          cursorColor: Colors.black,
          cursorHeight: 20,
          showCursor: true,
          enableSuggestions: true,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const QRCodePage()),
                );
              },
              icon: const Icon(
                Icons.qr_code,
                color: Colors.black45,
              )),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("recent searches"),
                    TextButton(onPressed: () {}, child: const Text("Clear"))
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: history.length,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                    child: const Icon(
                                      Icons.access_time_outlined,
                                      size: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.04,
                                    child: Text(
                                      history[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: const Icon(
                                  CupertinoIcons.arrow_up_left,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                child: const Text("Try searching for"),
              ),
              ListView.builder(
                itemCount: recent.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              height: MediaQuery.of(context).size.width * 0.1,
                              child: const Icon(
                                Icons.search,
                                size: 15,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.04,
                              child: Text(
                                recent[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            CupertinoIcons.arrow_up_left,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
