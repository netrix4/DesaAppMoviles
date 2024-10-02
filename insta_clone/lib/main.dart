import 'package:flutter/material.dart';
import 'package:insta_clone/Controls/nav_bar.dart';
import 'package:insta_clone/Controls/search_suggestion_buttons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: const Padding(
            padding: EdgeInsets.all(8.0),
            child: SafeArea(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 237, 237, 237),
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(width: 1.3, style: BorderStyle.solid)
                  )
                )
              ),
            ),
          ),
          actions:[
            IconButton(onPressed: ()=>{}, 
            icon: const Icon(Icons.scatter_plot_outlined))
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: const SizedBox(
                height: 50,
                child: CarouselView(
                  // itemSnapping: true,
                  itemExtent: 116, 
                  children: [
                    SearchSuggestionButton(),
                    SearchSuggestionButton(),
                    SearchSuggestionButton(),
                    SearchSuggestionButton(),
                    SearchSuggestionButton(),
                    SearchSuggestionButton(),
                    SearchSuggestionButton(),
                    SearchSuggestionButton(),
                  ]
                ),
              ),
            ),
            SizedBox(
              height: 508,
              child: GridView.count(
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                crossAxisCount: 3,
                padding: const EdgeInsets.symmetric(vertical: 5),
                children: [
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                  Container(color: const Color.fromARGB(255, 238, 238, 238),),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar:const NavBar(),
      ),
    );
  }
}

