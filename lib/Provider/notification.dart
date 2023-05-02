import 'package:flutter/cupertino.dart';

import '../Data/dummy_data.dart';

class NotiCounter extends ChangeNotifier {
  int temp = 0;
  Iterable<int> numOfNoti = notification.map((element) {
    int temp = 0;
    if (element.seen == true) {
      temp++;
    }
    return temp;
  });

  // ignore: non_constant_identifier_names
  Iterable<int> get Num => numOfNoti;
}
