import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage ({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method:
  void signaUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signaUserOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Text(
          'LOGGED IN AS: ${user.email!}', 
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
