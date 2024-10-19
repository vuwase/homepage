import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image from 'images' folder
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/page2image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content over the image
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to our store',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Get your fresh produce. Try it now!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
  onPressed: () {
    // Button action here
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFFB97423), // Updated to backgroundColor
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
  ),
  child: Text(
    'Get Started',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  ),
),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
