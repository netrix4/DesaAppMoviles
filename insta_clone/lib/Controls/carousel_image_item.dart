import 'package:flutter/material.dart';

class CarouselPostImage extends StatelessWidget {
  final String imagePath; 

  const CarouselPostImage({
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Image.asset(imagePath,
        fit: BoxFit.fill,),
    );
  }
}