import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/sub-page/jobs/job.dart';
import 'package:flutter_auth/sub-page/notification/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:provider/provider.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../sub-page/MyNetwork/mynetwork.dart';
import '../sub-page/homepage/home_page.dart';
import '../sub-page/post/post.dart';
import 'Screen/Setting.dart';
import 'Screen/messager.dart';
import 'Screen/Profile/profile.dart';
import 'Screen/search.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  final PageController _pageController = PageController();
  Widget _buildBody() {
    return PageView(
      onPageChanged: (index) {
        setState(() {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PostPage(),
              ),
            );
          } else {
            _index = index;
          }
        });
      },
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        HomePage(),
        MyNetwrk(),
        PostPage(),
        NotificationPage(),
        JobPage(),
      ],
    );
  }

  Widget _buildBottomAppBar() {
    int num = 0;
    return BottomNavigationBar(
      selectedFontSize: 10,
      unselectedFontSize: 8,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(color: Colors.black),
      unselectedLabelStyle: const TextStyle(color: Colors.white),
      currentIndex: _index,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PostPage(),
            ),
          );
        } else {
          _index = index;
          _pageController.jumpToPage(_index);
        }
      },
      items: [
        BottomNavigationBarItem(
            icon: Container(
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: _index == 0 ? Colors.black : Colors.white,
                            width: 1))),
                child: const Icon(Icons.home, size: 20)),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _index == 1 ? Colors.black : Colors.white,
                          width: 1))),
              child: const Icon(FontAwesome5.user_friends, size: 20),
            ),
            label: "My Network"),
        BottomNavigationBarItem(
            icon: Container(
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: _index == 2 ? Colors.black : Colors.white,
                            width: 1))),
                child: const Icon(
                  CupertinoIcons.plus_square_fill,
                  size: 20,
                )),
            label: "Post"),
        BottomNavigationBarItem(
            icon: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: _index == 3 ? Colors.black : Colors.white,
                              width: 1))),
                  child: const Icon(
                    CupertinoIcons.bell_fill,
                    size: 20,
                  ),
                ),
                const Positioned(
                  bottom: 2,
                  right: 15,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Color.fromARGB(255, 238, 39, 25),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  right: 19,
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "$num",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      )),
                ),

                // Positioned(child:Text() )
              ],
            ),
            label: "Notifications"),
        BottomNavigationBarItem(
            icon: Container(
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: _index == 4 ? Colors.black : Colors.white,
                            width: 1))),
                child: const Icon(
                  FontAwesome5.briefcase,
                  size: 20,
                )),
            label: "Jobs")
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: Builder(
        builder: ((context) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.width * 0.1,
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            ),
          );
        }),
      ),
      backgroundColor: Colors.white,
      title: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchPage()),
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
      actions: [
        _index == 4
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black54,
                ),
              )
            : Container(),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MessagePage()),
              );
            },
            icon: const Icon(
              FontAwesome5.comment_dots,
              color: Colors.black54,
              size: 20,
            ))
      ],
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.48,
      child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                child: Container(
                  color: Colors.grey[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.width * 0.11,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfilePage()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: CircleAvatar(
                              radius: 90,
                              backgroundImage: AssetImage('assets/profile.png'),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Nicholas Louis",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Text(
                                "",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 8),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 10, left: 10),
                                width: 3,
                                height: 3,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 30,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SettingPage()),
                                  );
                                },
                                child: const Text(
                                  "Settings",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 8),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 15,
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: const Border(
                      top: BorderSide(color: Colors.black12, width: 1),
                      bottom: BorderSide(color: Colors.black12, width: 1),
                    )),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [Colors.yellow, Colors.orange])),
                    ),
                    const Text("Try Premium for free",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12, width: 1))),
                    child: const ListTile(
                      title: Text("Recent"),
                      textColor: Colors.black45,
                    )),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black12, width: 1),
                        bottom: BorderSide(color: Colors.black12, width: 1),
                      ),
                    ),
                    child: const ListTile(
                      title: Text("Groups"),
                      textColor: Color.fromARGB(255, 33, 93, 243),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.42,
                        margin: const EdgeInsets.only(
                            left: 20, top: 12, bottom: 12),
                        child: const Text(
                          "Event",
                          style: TextStyle(
                              color: Color.fromARGB(255, 33, 93, 243),
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 40, top: 6, bottom: 6),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.black38,
                          ),
                          Text(
                            "Create Event",
                            style: TextStyle(
                                color: Color.fromARGB(255, 33, 93, 243),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12, width: 1))),
                    child: const ListTile(
                      title: Text("Followed Hashtags"),
                      textColor: Color.fromARGB(255, 33, 93, 243),
                    )),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12, width: 1))),
                    child: const ListTile(
                      title: Text("Discover more"),
                      textColor: Color.fromARGB(255, 52, 103, 232),
                    )),
              ),
            ],
          )),
    );
  }
}
