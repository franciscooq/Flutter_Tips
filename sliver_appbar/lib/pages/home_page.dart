import 'package:flutter/material.dart';
import 'package:sliver_appbar/utils/sliver_item.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          //Sliver AppBar
          SliverAppBar(
            leading: const Icon(Icons.menu),
            // title: Text(title),
            expandedHeight: 230,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pinkAccent,
              ),
              title: Text(title),
            ),
          ),

          //Sliver items
          const SliverItem(),
          const SliverItem(),
          const SliverItem(),
          const SliverItem(),
        ],
      ),
    );
  }
}
