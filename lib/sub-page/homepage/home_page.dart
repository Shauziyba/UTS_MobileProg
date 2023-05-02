import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../Data/dummy_data.dart';
import '../../models/userpostModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserPostModel> listPost = postList;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: HexColor("#f3f2ee"),
        child: Padding(
          padding: const EdgeInsets.only(top: 1, left: 30, right: 30),
          child: ListView.builder(
              itemCount: listPost.length,
              itemBuilder: ((context, index) =>
                  _buildItemPost(listPost[index]))),
        ));
  }

  Widget _buildItemPost(UserPostModel item) {
    List<Positioned> listReaction = [
      Positioned(
          child: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset("assets/Icon-reaction/1.png"),
      )),
      Positioned(
          left: 11,
          child: SizedBox(
            width: 15,
            height: 15,
            child: Image.asset("assets/Icon-reaction/2.png"),
          )),
      Positioned(
          left: 22,
          child: SizedBox(
            width: 15,
            height: 15,
            child: Image.asset("assets/Icon-reaction/3.png"),
          )),
      Positioned(
          left: 34,
          child: SizedBox(
            width: 15,
            height: 15,
            child: Image.asset("assets/Icon-reaction/4.png"),
          )),
      Positioned(
          left: 44,
          child: SizedBox(
            width: 15,
            height: 15,
            child: Image.asset("assets/Icon-reaction/5.png"),
          )),
      Positioned(
          left: 55,
          child: SizedBox(
            width: 15,
            height: 15,
            child: Image.asset("assets/Icon-reaction/6.png"),
          )),
    ];
    List<Positioned> displayReaction = [];
    for (int i = 0; i < item.numOfReactionIcon; i++) {
      displayReaction.add(listReaction[i]);
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: CircleAvatar(
                          radius: 90,
                          backgroundImage: AssetImage(item.profileUrl),
                        ),
                      ),
                      item.isOnline
                          ? const Positioned(
                              top: 20,
                              left: 15,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      Color.fromARGB(255, 95, 224, 99),
                                ),
                              ),
                            )
                          : Container(),
                      item.isOnline
                          ? const Positioned(
                              bottom: -9,
                              left: 17,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 3,
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 260,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  item.name,
                                  style: const TextStyle(color: Colors.black),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  width: 4,
                                  height: 4,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 98, 98, 98),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Text(
                                  item.postDate,
                                  style: const TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.more_vert,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          item.headline,
                          style: const TextStyle(
                            fontSize: 8,
                            color: Color.fromARGB(255, 87, 87, 87),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            item.duration,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 87, 87, 87),
                                fontSize: 12),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 5),
                            width: 4,
                            height: 4,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 87, 87, 87),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Icon(
                            // ignore: deprecated_member_use
                            FontAwesomeIcons.earth,
                            size: 10,
                            color: Color.fromARGB(255, 87, 87, 87),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(item.description),
            const SizedBox(
              height: 8,
            ),
            Image.asset(item.image),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 12 * item.numOfReactionIcon.toDouble(),
                        child: Stack(
                          children: displayReaction,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        item.likes.toString() + " reactions",
                        style: const TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        item.comments != ""
                            ? Text(item.comments + " Comments",
                                style: const TextStyle(fontSize: 10))
                            : Container(),
                        item.share != ""
                            ? const SizedBox(
                                width: 5,
                              )
                            : Container(),
                        item.share != ""
                            ? Container(
                                width: 2,
                                height: 2,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 98, 98, 98),
                                  shape: BoxShape.circle,
                                ),
                              )
                            : Container(),
                        item.share != ""
                            ? const SizedBox(
                                width: 5,
                              )
                            : Container(),
                        item.share != ""
                            ? Text(item.share.toString() + " shares",
                                style: const TextStyle(fontSize: 10))
                            : Container(),
                      ]),
                ],
              ),
            ),
            Container(
              height: 0.2,
              width: double.infinity,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (() {}),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.thumb_up_off_alt_outlined,
                        size: 15,
                        color: Colors.grey.shade700,
                      ),
                      Text(
                        "Like",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      FontAwesome.commenting_o,
                      size: 15,
                      color: Colors.grey.shade700,
                    ),
                    Text(
                      "Comment",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    )
                  ],
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      CupertinoIcons.arrow_turn_up_right,
                      size: 15,
                      color: Colors.grey.shade700,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      FontAwesome5.paper_plane,
                      size: 10,
                      color: Colors.grey.shade700,
                    ),
                    Text(
                      "Send",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
