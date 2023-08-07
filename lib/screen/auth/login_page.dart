import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Wel Come To Login Page"),
          ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text("Go Back"))
        ],
      ),
    );
  }
}
