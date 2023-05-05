import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/forgot_page.dart';
import 'package:flutter_auth/Screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_auth/main-page/main_page.dart';
import 'Screens/auth_page.dart';
import 'firebase_options.dart';
import 'package:flutter_auth/main-page/main_page.dart';

void main() async {
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
