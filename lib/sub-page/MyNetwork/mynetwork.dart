import 'package:flutter/material.dart';
import 'package:flutter_auth/Data/dummy_data.dart';
import 'dart:math';

class MyNetwrk extends StatelessWidget {
  const MyNetwrk({Key? key}) : super(key: key);
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(),
  //       body: ListView(
  //         children: [
  //           Container(
  //               margin: const EdgeInsets.all(10),
  //               height: 200,
  //               decoration: const BoxDecoration(
  //                 borderRadius: BorderRadius.only(
  //                   topLeft: Radius.circular(10),
  //                   topRight: Radius.circular(10),
  //                 ),
  //                 color: Colors.blue,
  //               )),
  //         ],
  //       ));
  //   // return const Text("MyNetwrk");
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: const ListTile(
              title: Text("My network"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: const ListTile(
              title: Text("No pending invitations"),
              trailing: Text(
                "MANAGE ALL",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              // color: Colors.green,
              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 8.0,
                  padding: const EdgeInsets.all(10),
                  childAspectRatio: 1 / 1.6,
                  children: network
                      .map((network) => Column(children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                              fit: BoxFit.fill,
                              height: 120,
                            ),
                            Text(network['Name']!),
                            Text(network['Status']!)
                            //  addConnection: userProvider.addConection,
                          ]))
                      .toList()
                  // children: List<Widget>.generate(
                  //     network.length,
                  //     (index) => Column(
                  //           children: [
                  //             Image.network(
                  //               "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                  //               fit: BoxFit.fill,
                  //               height: 120,
                  //             ),
                  //             Text(network[index]['Name']!),
                  //             Text(network[index]['Status']!)
                  //           ],
                  //         )),

                  ),
            ),
          ),
        ],
      ),
    );
  }
}
