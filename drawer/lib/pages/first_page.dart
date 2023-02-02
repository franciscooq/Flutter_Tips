import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 214, 167),
      body: GestureDetector(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.green[300],
            child: const Text("F I R S T   P A G E"),
          ),
        ),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
