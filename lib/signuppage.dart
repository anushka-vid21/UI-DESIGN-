import 'package:flutter/material.dart';



// sign up page
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI DESIGN"),
        backgroundColor: Colors.orange[900],
      ),
      body: Column(
        children: <Widget>[
          // Add two Text widgets at the top
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "SIGN UP PAGE",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[900],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "UI DESIGN OF THE SIGN UP SCREEN",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange[600],
                  ),
                ),
              ],
            ),
          ),
          Expanded( // Allow the Stack to take the rest of the screen space
            child: Container(
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0,  // Position the shading container at the bottom
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade500.withOpacity(1),  // Darker shade
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          topRight: Radius.circular(150),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 70),
                            // Email Text Field
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                            SizedBox(height: 20),
                            // Password Text Field
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                            SizedBox(height: 20),
                            // Confirm Password Text Field
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                            SizedBox(height: 20),
                            // Captcha Text Field (Simple placeholder)
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Captcha',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                            SizedBox(height: 20),
                            // Sign Up Button (Outlined Button)
                            ElevatedButton(
                              onPressed: () {
                                // Add signup functionality here
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Colors.orange[900], // Text color
                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Padding
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30), // Rounded corners
                                ),
                              ),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}