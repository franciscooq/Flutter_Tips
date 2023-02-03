import 'package:flutter/material.dart';
import 'package:tab_bar/pages/first_page.dart';
import 'package:tab_bar/pages/second_page.dart';
import 'package:tab_bar/pages/third_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("T A B   B A R")),
        ),
        body: Column(
          children: const [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FirstPage(),
                  SecondPage(),
                  ThirdPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
