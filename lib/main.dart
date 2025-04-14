import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true, // Prevent overflow when keyboard opens
        body: LayoutBuilder(
          builder: (context, constraints) {
            final screenHeight = constraints.maxHeight;
            final screenWidth = constraints.maxWidth;

            return SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                ), // Responsive padding
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Top image
                    Image.asset(
                      'assets/image.jpg',
                      height: screenHeight * 0.4, // Responsive height
                    ),
                    SizedBox(height: screenHeight * 0.01), // Responsive spacing
                    // Login title
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 27, 55, 77),
                            fontSize: screenWidth * 0.1, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.001),

                    // Subtitle
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Please Sign in to continue.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.05, // Responsive font size
                            color: Color.fromARGB(255, 27, 55, 77),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),

                    // Username field
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'UserName',
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Password field
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'PassWord',
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),

                    // Remember me toggle
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reminder me next time',
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        Switch(value: false,
                            activeColor: Color.fromARGB(255, 27, 55, 77),
                            onChanged: (value) {}),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),

                    // Sign In button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 27, 55, 77),
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),

                    // Sign Up link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 55, 77),
                              fontWeight: FontWeight.w900,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
