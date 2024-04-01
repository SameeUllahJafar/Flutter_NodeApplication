import 'package:flutter/material.dart';
import 'package:flutter_application/custom_button/custom_button.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth_screen';

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 209, 209),
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
              ),
            ),
            ListTile(
              title: const Text(
                "Create Account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: Colors.yellow,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? value) {
                  setState(() {
                    _auth = value!;
                  });
                },
              ),
            ),
            if (_auth == Auth.signin)
              Container(
                padding: EdgeInsets.all(8),
                color: Colors.white,
                child: const Form(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black38,
                          )),
                          labelText: 'Enter Email',
                          hintText: 'name@gmail.com',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black38,
                          )),
                          labelText: 'Enter Password',
                        ),
                      ),
                      SizedBox(height: 10),
                      custom_button(
                        text: "singin",
                      )
                    ],
                  ),
                ),
              )
            else if (_auth == Auth.signup)
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: const Form(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black38,
                          )),
                          labelText: 'Enter Name',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black38,
                          )),
                          labelText: 'Enter Email',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black38,
                          )),
                          labelText: 'Enter Password',
                        ),
                      ),
                      SizedBox(height: 10),
                      custom_button(
                        text: "singin",
                      )
                    ],
                  ),
                ),
              ),
            ListTile(
              title: const Text(
                "Sign In.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: Colors.yellow,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? value) {
                  setState(() {
                    _auth = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
