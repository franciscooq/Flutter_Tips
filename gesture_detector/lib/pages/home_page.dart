import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberOfTimesTapped = 0;

  void _increaseNumber() {
    setState(() {
      numberOfTimesTapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped ' + numberOfTimesTapped.toString() + ' Times',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            GestureDetector(
              onTap: _increaseNumber,
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colors.green[600],
                child: const Text(
                  'T A P   H E R E',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
