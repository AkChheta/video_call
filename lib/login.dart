import 'package:flutter/material.dart';
import 'package:video_call/home.dart';

class LoginPage extends StatelessWidget {
  static String name = "";
  static String userId = "";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                name = value;
              },
              decoration: const InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                userId = value;
              },
              decoration: const InputDecoration(
                  hintText: "UserId", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyHome()));
                },
                child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
