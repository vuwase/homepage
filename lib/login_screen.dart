import 'package:flutter/material.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/farmlink_logo.png', height: 30),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login functionality
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Forgot password functionality
              },
              child: Text('Forgot your password?'),
            ),
            SizedBox(height: 20),
            Text('Or sign in with'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.g_mobiledata),
                  onPressed: () {
                    // Google login functionality
                  },
                ),
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {
                    // Facebook login functionality
                  },
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              child: Text('Don’t have an account? Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
