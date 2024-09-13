import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){}, 
            icon:const Icon(
              Icons.arrow_back_ios_new
            )
          ),
          title:const Text("Historias Cortas")
        ),
        body:ListView(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          // itemExtent: 100.0,
          children: [
            Container(
              color: Colors.white70,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/Story1.png", height: 200),
                  // Image.asset("assets/images/RedUno.png"),
                  SingleChildScrollView(
                    child:Text(
                          "Había una vez un niño que se llamaba pablito. Tempor laboris cupidatat consectetur officia adipisicing nisi ullamco Lorem sit. Esse dolor anim sit consectetur dolor voluptate. Ex culpa eiusmod consectetur proident nulla labore cillum pariatur voluptate ad eiusmod. Ipsum occaecat elit deserunt aliqua esse anim mollit cupidatat aliquip deserunt ut amet nostrud non.", 
                          // "Enim eiusmod id consequat quis.", 
                          textAlign: TextAlign.center, 
                          softWrap: true,
                          textWidthBasis: TextWidthBasis.parent,
                        ),
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Container(
              color: Colors.white70,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    child: const Text(
                      "Pablito quería una bicicleta", 
                      textAlign: TextAlign.center, 
                      softWrap: true,
                      textWidthBasis: TextWidthBasis.parent
                    ),
                  ),
                  Image.asset("assets/images/Story2ALT.png", height: 200),
                ],
              ),
            ),
            Container(
              color: Colors.white70,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/Story3.png", height: 200),
                  Container(
                    width: 150,
                    child: const Text("Pablito trabajó por su bicicleta", 
                      textAlign: TextAlign.center, 
                      softWrap: true,
                      textWidthBasis: TextWidthBasis.parent)
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white70,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    child: const Text("Pablito se compró su bicicleta", 
                      textAlign: TextAlign.center, 
                      softWrap: true,
                      textWidthBasis: TextWidthBasis.parent
                    )
                  ),
                  Image.asset("assets/images/Story4.jpg", height: 200,width: 200,),
                ],
              ),
            ),
            Container(
              color: Colors.white70,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/Story5.png", height: 200),
                  const Text("Pablito fue feliz", 
                    textAlign: TextAlign.center, 
                    softWrap: true,
                    textWidthBasis: TextWidthBasis.parent
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white70,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FIN.")
                  
                ],
              ),
            )
          ],
        )
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
