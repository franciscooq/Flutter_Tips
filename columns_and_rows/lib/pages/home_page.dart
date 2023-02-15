import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[400],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.deepPurple[200],
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepOrange[400],
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepOrange[200],
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            height: 100,
            color: Colors.deepPurpleAccent,
            child: const Center(
              child: Text(
                "Columns and Rows",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
