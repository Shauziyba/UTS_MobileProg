import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/Data/dummy_data.dart';
import 'package:flutter_auth/models/network.dart';

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
    List<myNetwork> networkInfo = network;

    return Container(
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("Manage my network"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("No pending invitations"),
              trailing: Text(
                "MANAGE ALL",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(4, (index) {
                  return Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
