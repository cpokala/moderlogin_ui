import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/login_or_register.dart';
import 'package:modernlogintute/pages/home_page.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return HomePage();
          } else {
            // user has NOT logged in
            return const LoginOrRegisterPage ();
          }
        },
      ), // StreamBuilder
    ); // Scaffold
  }
}
