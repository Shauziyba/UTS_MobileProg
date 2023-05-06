import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../component/textfield.dart';


class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {


   final emailController = TextEditingController();


    @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }


    Future passwordReset( )async {
      try{
        await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text.trim()
        );
        showDialog
        (context: context, 
        builder: (context){
          return AlertDialog(
            content: Text('Password Reset Link Has Been Sent!'),
          );
        },
        );
      } on FirebaseAuthException catch (e) {
        print(e);
        showDialog
        (context: context, 
        builder: (context){
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
        );
      }
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation:0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text("Enter the Email of your Password that you want to recover",
        textAlign: TextAlign.center,
        style: TextStyle(
        
          fontSize: 20,
          fontWeight: FontWeight.bold,
          
        ),),
      ),

        const SizedBox(height: 20,),

      Textfield(
                controller: emailController,
                hintText: 'Email',
                obsecureText: false,
              ),

              const SizedBox(height: 10,),

              MaterialButton(
              onPressed: passwordReset,
              child: Text(
                "Reset Password",
                style: TextStyle(
                  color: Colors.white,
                ),),
              color: Colors.blue[900],)
      ],
      ),
    );
  }
}

