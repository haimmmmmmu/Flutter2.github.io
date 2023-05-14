import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: Colors.green,
          title: Text(
            'Sign in',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(157, 216, 214, 214),
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(30))),
                      labelText: "Username",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      focusColor: Colors.green,
                      filled: true,
                      fillColor: Color.fromARGB(157, 216, 214, 214),
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(30))),
                      labelText: "Password",
                    ),
                    obscureText: true,
                    obscuringCharacter: "*",
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  alignment: Alignment.bottomRight,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Forgot ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "Username/Password?",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  color: Colors.white,
                  height: 340,
                  width: 430,
                  alignment: Alignment.bottomCenter,
                  child: Text("Don't have an account?"),
                ),
                Container(
                  color: Colors.white,
                  height: 40,
                  width: 430,
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "SIGN UP NOW",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 30),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}