// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('MyApp'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.black54,
              child: const Center(child: Text('Container 1')),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.brown,
              child: const Center(child: Text('Container 2 ')),
            ),
          ],
        ),
      ),
    );
  }
}
