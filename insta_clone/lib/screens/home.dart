import 'package:flutter/material.dart';
import 'package:insta_clone/Controls/carousel_story_item.dart';
import 'package:insta_clone/Controls/nav_bar.dart';
import 'package:insta_clone/Controls/post.dart';

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
          backgroundColor: const Color.fromARGB(255, 245, 245, 245),
          centerTitle: true,
          title: SizedBox(
            height: 30,
            child: Image.asset("assets/images/instagram-name-logo.png", 
              fit: BoxFit.fitHeight,
            ),
          ),

          leading: IconButton(
            onPressed: ()=>{}, 
            icon: const Icon(Icons.camera_alt_outlined)
          ),
          actions:[
            IconButton(onPressed: ()=>{}, 
            icon: const Icon(Icons.message_outlined))
          ],
        ),
        body: ListView(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            SizedBox(
              height: 100,
              child: CarouselView(
                padding: const EdgeInsets.all(0),
                backgroundColor: Colors.white,
                itemExtent: 90,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
                children: const [
                  CarouselStoryItem(displayedText: "Add Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                  CarouselStoryItem(displayedText: "Your Story",),
                ]
              ),
            ),
            const Post(),
            const Post(),
            const Post(),
          ]
        ),
        bottomNavigationBar:const NavBar(),
      ),
    );
  }
}