import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import '../../Data/dummy_data.dart';
import '../../models/chat.dart';
import '../main_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<Chat> chatInfo = chat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Messaging",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesome.pencil_squared, color: Colors.grey)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          alignment: Alignment.topCenter,
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: const [
                          Icon(Icons.search),
                          Text("Search messages")
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: const Icon(Icons.menu))
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => _buildItem(chatInfo[index]),
                  itemCount: chatInfo.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem(Chat chatItem) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 1))),
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(chatItem.urlProfile),
                ),
              ),
              chatItem.active
                  ? const Positioned(
                      bottom: 1,
                      right: 1,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Color.fromARGB(255, 95, 224, 99),
                        ),
                      ),
                    )
                  : Container(),
              chatItem.active
                  ? const Positioned(
                      bottom: 3,
                      right: 3,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(chatItem.nameChat),
                    Text(
                      chatItem.lastDate,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "You : ${chatItem.lastChat}",
                style: const TextStyle(fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }
}
