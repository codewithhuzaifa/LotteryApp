import 'package:flutter/material.dart';
import 'dart:math';

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  int x = 0;
  int winningNo = 6;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LotteryApp"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  " Lottrey Winning Number Is : $winningNo ",
                  style: const TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: x == 6
                      ? Colors.grey.withOpacity(0.6)
                      : Colors.grey.withOpacity(0.3),
                ),
                child: x == 6
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all_sharp,
                            color: Colors.green,
                            size: 50,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Congratulations!, Your Number Is : $x\n\nYou Have Won The Lottery',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.warning,
                            color: Colors.red,
                            size: 50,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Better Luck Next Time, Your Number Is : $x\n\nTry Again',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(10);
          setState(() {});
        },
        child: const Icon(Icons.refresh_sharp),
      ),
    );
  }
}
