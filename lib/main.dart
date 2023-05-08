import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth/Screens/home_page.dart';
import 'package:flutter_auth/main-page/main_page.dart';
import 'package:flutter_auth/onboard/onboard.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/auth_page.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth/onboard/onboard.dart';
import 'package:flutter_auth/onboard/onboard_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_auth/Screens/login_page.dart';
import 'package:flutter_auth/Screens/LoginOrRegisterPage.dart';

int? isviewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(MyApp());

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoard(),
    );
  }
}
