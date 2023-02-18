import 'package:flutter/material.dart';
import 'package:ormoc_app/components/text_field.dart';

import '../components/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
          child: Column(children: [
            const SizedBox(height: 50),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),
            Text(
              "Welcome back to our amazing app!",
              style: TextStyle(color: Colors.grey[700], fontSize: 24),
            ),
            const SizedBox(
              height: 25,
            ),
            InputComponent(
                controller: usernameController,
                hintText: "Username",
                obscureText: false),
            const SizedBox(
              height: 25,
            ),
            InputComponent(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                )),
            const SizedBox(
              height: 25.0,
            ),
            ButtonComponent(
              onTap: signIn,
            ),
            const SizedBox(
              height: 25,
            ),
          ]),
        )));
  }

  void signIn() {
    print("signing in");
  }
}
