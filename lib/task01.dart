import 'package:flutter/material.dart';

class Task01 extends StatelessWidget {
  const Task01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('MyApp'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.deepOrange,
                width: 100,
                height: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.brown,
                width: 100,
                height: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                color: Colors.black26,
                width: 100,
                height: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                color: Colors.cyan,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.tealAccent,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                color: Colors.pink,
                width: 100,
                height: 100,
              )
            ],
          ),
        ],
      ),
    );
  }
}
