import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/login_page.dart';
import 'package:flutter_auth/main-page/main_page.dart';
import 'LoginOrRegisterPage.dart';
import 'home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData){
            return MainPage();
          }
        

          else{
            return LoginOrRegisterPage();
          }

        },
      ),
    );
  }
}