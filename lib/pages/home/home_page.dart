import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openUnity() {
    //
  }

  void _openFlame() {
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: _openUnity,
              child: const Text("Unity"),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: _openFlame,
              child: const Text("Flame"),
            ),
          ],
        ),
      ),
    );
  }
}
