import 'package:bar_graph/graph_bar/bar_graph.dart';
import 'package:flutter/material.dart';

/*
  TASK:
    
    Input: List of weekly expenses = [sunAmount, monAmount, ... , satAmount]

    Output: Display in a nice bar graph

*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of weekly expense
  List<double> weeklySummary = [18.40, 9.15, 42.42, 99.20, 78.99, 2.50, 57.18];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SizedBox(
          child: BarGraph(
            weeklySummary: weeklySummary,
          ),
          height: 350,
        ),
      ),
    );
  }
}
