import 'package:flutter/material.dart';
import '../widgets/item_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ItemList(
            itemText: 'a', 
            colorb: Colors.black38, 
            customWidth: 90,
            // customWidth: 
          ),
          ItemList(
            itemText: "Esto es un texto por argumento", 
            colorb: Color.fromARGB(255, 239, 4, 4),
            customWidth: 75, 
          )
        ]
      )
    );
  }
}
