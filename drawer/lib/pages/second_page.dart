import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 144, 202, 249),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue[300],
            child: const Text("S E C O N D   P A G E"),
          ),
        ),
      ),
    );
  }
}
