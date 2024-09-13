import 'package:flutter/material.dart';
import 'package:insta_clone/Controls/highlighted_stories.dart';
import 'package:insta_clone/Controls/nav_bar.dart';

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
          
          // toolbarHeight: 32,
          backgroundColor: const Color.fromARGB(255, 245, 245, 245),
          centerTitle: true,
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Username', textScaler: TextScaler.linear(.8),),
              IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.expand_more)
              )
            ],
          ),          
          actions:[
            IconButton(onPressed: ()=>{}, 
            icon: const Icon(Icons.menu))
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              // El avatar, los post, los followers, y los follows
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 7),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 90,
                      child:CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    // Posts
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("55"),
                        Text("Post",textScaler: TextScaler.linear(.8),)
                      ],
                    ),
                    // Followers
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("152"),
                        Text("Followers",textScaler: TextScaler.linear(.8),)
                      ],
                    ),
                    // Following
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("55"),
                        Text("Following",textScaler: TextScaler.linear(.8),)
                      ],
                    ),
                
                  ],
                ),
              ),
              // Bio
              Container(
                color: Colors.white,
                width: double.infinity,
                padding:const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your name", textScaler: TextScaler.linear(.8),),
                    Text("Description", textScaler: TextScaler.linear(.8), style: TextStyle(fontWeight: FontWeight.w200),),
                    Text("Bio", textScaler: TextScaler.linear(.8),),
                    Text("www.website.com", textScaler: TextScaler.linear(.8), style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue, ),),
                  ],
                ),
              ),
              // Boton de seguir, mensaje y mas
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                        fixedSize: const WidgetStatePropertyAll(Size.fromWidth(125)),
                        backgroundColor: const WidgetStatePropertyAll(Colors.white),
                        shape:  WidgetStateProperty.all(const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                      ),
                      onPressed: () {},
                      child: const Text("Following", style: TextStyle(color: Colors.black, fontSize: 10)),
                    ),
          
                    OutlinedButton(
                      style: ButtonStyle(
                        fixedSize: const WidgetStatePropertyAll(Size.fromWidth(125)),
                        backgroundColor: const WidgetStatePropertyAll(Colors.white),
                        shape:  WidgetStateProperty.all(const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: ()=>{},
                      child: const Text('Message', style: TextStyle(color: Colors.black, fontSize: 10))
                    ),
                    OutlinedButton(
                      // iconAlignment: IconAlignment.start,
                      style: ButtonStyle(
                        // fixedSize: const WidgetStatePropertyAll(Size.fromHeight(25)),
                        backgroundColor: const WidgetStatePropertyAll(Colors.white),
                        shape:  WidgetStateProperty.all(const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: ()=>{},
                      child: const Icon(Icons.expand_more)
                    ),
                  ],
                ),
              ),
              // Historias Destacadas
              SizedBox(
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CarouselView(
                    // padding: const EdgeInsets.symmetric(horizontal: 0),
                    backgroundColor: Colors.white,
                    itemExtent: 70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)
                    ),
                    children: const [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 238, 238, 238),
                            radius: 35,
                            child: Icon(Icons.add),
                          ),
                          Text("New", textScaler: TextScaler.linear(.8))
                        ],
                      ),
                      HighlightedStories(),
                      HighlightedStories(),
                      HighlightedStories(),
                      HighlightedStories(),
                      HighlightedStories(),
                      HighlightedStories(),
          
                    ]
                  ),
                ),
              ),
              SizedBox(
                height: 202,
                width: 350,
                // color: Colors.red,
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
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar:const NavBar(),
      ),
    );
  }
}
