import 'package:CS3MidLogin/screens/homeScreen.dart';
import 'package:CS3MidLogin/screens/signUpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double maxWidth = 400;
      // double containerWidth = constraints.maxWidth < maxWidth ? constraints.maxWidth : maxWidth;

      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icon/LOGO - Mr. Jello.png',
                  height: 100,
                  width: 500,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  width: maxWidth,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                SizedBox(
                  width: maxWidth,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  width: maxWidth,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Email",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                SizedBox(
                  width: maxWidth,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  width: maxWidth,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Password",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                SizedBox(
                  width: maxWidth,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: maxWidth,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Sign In Button
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          width: maxWidth,
                          child: TextButton(
                            onPressed: () {
                              // Navigate to the LoginScreen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xFF6249E9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ), // Full-width button
                            ),
                            child: const Text('Sign In',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Doesn't have an account?",
                      style: TextStyle(fontSize: 11),
                    ),
                    const SizedBox(width: 2),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
