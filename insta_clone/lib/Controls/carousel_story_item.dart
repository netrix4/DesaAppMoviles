import 'package:flutter/material.dart';

class CarouselStoryItem extends StatelessWidget {
  final String displayedText;

  const CarouselStoryItem({
    required this.displayedText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children:[
          const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
          ),
          Text(displayedText,
            textScaler: const TextScaler.linear(.8),
          )
        ]
      ),
    );
  }
}