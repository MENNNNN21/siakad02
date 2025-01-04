import 'package:flutter/material.dart';
import 'package:siakad1/Login.dart';

import 'dart:async';

class Homepage extends StatefulWidget {
  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    starHomepage();
  }

  starHomepage() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return LoginScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 411,
        height: 823,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            // Background image
            Positioned(
              top: -118.44,
              left: -171.14,
              child: Image.asset(
                'assets/backgroundlogin.png',
                width: 768.62,
                height: 1129.93,
                fit: BoxFit.cover,
              ),
            ),

            // Logo image
            Positioned(
              top: 420,
              left: 50,
              child: Image.asset(
                'assets/LP3I.png',
                width: 65,
                height: 84.78,
                fit: BoxFit.contain,
              ),
            ),

            // Text
            Positioned(
              top: 510, // Adjusted for better alignment
              left: 50,
              child: Container(
                width: 192,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Siakad',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF2F80ED), // #2f80ed
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      'LP3I Bandung',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF2F80ED), // #2f80ed
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
