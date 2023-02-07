import 'package:flutter/material.dart';
import 'package:listview_and_builder/utils/square.dart';
import 'package:listview_and_builder/utils/circle.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //stories
          Container(
            margin: const EdgeInsets.only(top: 25),
            height: 120,
            child: Expanded(
              child: ListView.builder(
                  itemCount: _stories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Circle(
                      child: _stories[index],
                    );
                  }),
            ),
          ),

          //posts
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: ((context, index) {
                return Square(
                  child: _posts[index],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
