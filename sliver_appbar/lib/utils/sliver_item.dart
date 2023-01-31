import 'package:flutter/material.dart';

class SliverItem extends StatelessWidget {
  const SliverItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 400,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
