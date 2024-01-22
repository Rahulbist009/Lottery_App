import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Random random = Random();
int x = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lotery App'),
          backgroundColor: Colors.cyan,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'your lottery Winning num is  6',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: x==6?Colors.teal:Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x == 6
                      ? const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done_all_rounded,
                              color: Colors.lightGreen,
                              size: 30,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'congratulations, you won Lottery',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )
                      :  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           const Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 30,
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Batter luck next time your number is $x\nPlease try again  ',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
