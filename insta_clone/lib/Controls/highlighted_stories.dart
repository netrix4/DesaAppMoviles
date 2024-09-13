import 'package:flutter/material.dart';

class HighlightedStories extends StatelessWidget {
  const HighlightedStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 238, 238, 238),
          radius: 35,
          child: Icon(Icons.camera, color: Colors.grey),
        ),
      ],
    );
  }
}