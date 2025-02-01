import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                  "LOGIN PAGE",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[900],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "UI DESIGN OF THE LOGIN SCREEN",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange[600],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  // Shading containers
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade300.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          topRight: Radius.circular(150),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 420,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade300.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          topRight: Radius.circular(150),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 340,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade500.withOpacity(1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          topRight: Radius.circular(150),
                        ),
                      ),
                    ),
                  ),
                  // Semi-circle container at the bottom
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade500.withOpacity(1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          topRight: Radius.circular(150),
                        ),
                      ),
                    ),
                  ),
                  // Shading container (slightly smaller)
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      height: 270,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade500.withOpacity(1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          topRight: Radius.circular(150),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            // Email or Phone Number Text Field
                            TextField(
                              keyboardType: TextInputType.emailAddress, // Accept email addresses
                              decoration: InputDecoration(
                                hintText: 'Email or Phone Number',
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
                            // Login Button (Elevated Button)
                            ElevatedButton(
                              onPressed: () {
                                // Add login functionality here
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Colors.orange[900], // Text color
                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Padding
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30), // Rounded corners
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 20),
                            // Sign Up Button (Outlined Button)
                            // OutlinedButton(
                            //   onPressed: () {
                            //     // Navigate to Sign Up page (replace with your actual page)
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context) => SignUpPage()),
                            //     );
                            //   },
                            //   style: OutlinedButton.styleFrom(
                            //     foregroundColor: Colors.orange[900],
                            //     side: BorderSide(color: Colors.orange[900]!),
                            //     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(30),
                            //     ),
                            //   ),
                            //   child: Text(
                            //     "Sign Up",
                            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            //   ),
                            // ),
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

