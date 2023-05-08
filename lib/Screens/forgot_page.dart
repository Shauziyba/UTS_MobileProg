import 'package:flutter/material.dart';
import 'package:flutter_auth/component/textfield.dart';

class ForgotPass extends StatelessWidget {
  ForgotPass({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "lib/images/logo.png",
                  height: 62.5,
                  width: 105,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Forget Password',
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.normal,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Textfield(
              controller: usernameController,
              hintText: 'Email',
              obsecureText: false,
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
