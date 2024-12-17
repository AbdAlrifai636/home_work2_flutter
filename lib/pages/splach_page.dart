import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text("Travenor",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 30
        ),),
      ),
    );
  }
}
