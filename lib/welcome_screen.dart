import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/welcome_image.jpg'), // Add your background image in assets
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Welcome Text and Button
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Text(
                  'Welcome to our store',
                  style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Get your fresh produce.',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
