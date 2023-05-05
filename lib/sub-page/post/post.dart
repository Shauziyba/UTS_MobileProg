import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../main-page/main_page.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black45),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
            );
          },
        ),
        title: const Text(
          "Share Post",
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Post",
                style: TextStyle(color: Colors.black45),
              ))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: HexColor("#f3f2ee"),
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: InkWell(
                          onTap: () => Scaffold.of(context).openDrawer(),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: CircleAvatar(
                              radius: 90,
                              backgroundImage: AssetImage('assets/profile.png'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Nicholas Louis",
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: const Border(
                                    top: BorderSide(color: Colors.black),
                                    bottom: BorderSide(color: Colors.black),
                                    left: BorderSide(color: Colors.black),
                                    right: BorderSide(color: Colors.black),
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.earth,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "Anyone",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Icon(Icons.arrow_drop_down),
                                  SizedBox(
                                    width: 7,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "What do you want to talk about?",
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {}, child: const Text("Add hashtag")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.camera_alt,
                              size: 18,
                              color: Color.fromARGB(168, 0, 0, 0),
                            ),
                            Icon(
                              FontAwesome5.video,
                              size: 18,
                              color: Color.fromARGB(168, 0, 0, 0),
                            ),
                            Icon(
                              FontAwesome5.image,
                              size: 18,
                              color: Color.fromARGB(168, 0, 0, 0),
                            ),
                            Icon(
                              Icons.camera_alt,
                              size: 18,
                              color: Color.fromARGB(168, 0, 0, 0),
                            ),
                            Icon(
                              Icons.more_horiz,
                              size: 18,
                              color: Color.fromARGB(168, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            FontAwesome5.comment_dots,
                            size: 14,
                            color: Color.fromARGB(168, 0, 0, 0),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Anyone"),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
