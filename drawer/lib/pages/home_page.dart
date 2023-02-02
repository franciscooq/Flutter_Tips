import 'package:drawer/pages/first_page.dart';
import 'package:drawer/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Text(
                  "L O G O",
                  style: TextStyle(fontSize: 35),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: const Text(
                  "Page 1",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FirstPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: const Text(
                  "Page 2",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: const Drawer(),
    );
  }
}
