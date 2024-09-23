import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String itemText;
  final Color? colorb;
  final double? customHeight;
  final double? customWidth;
  
  //Esto es el equivalente al constructor 
  const ItemList({
    required this.itemText,
    this.colorb,
    this.customHeight,
    this.customWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: colorb,
        height: customHeight,
        width: customWidth,
        child: Text(itemText, textAlign: TextAlign.center,)
      ),
    );
  }
}