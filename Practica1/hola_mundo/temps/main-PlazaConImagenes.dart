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
          centerTitle: true,
          title: const Text('Plaza'),
          backgroundColor: Colors.blueAccent.shade100,
        ),
        body: Container(

          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.grey.shade400,
          // color: Colors.green,
          width: double.infinity,

          child: ListView(
            children: [
              Column(
                
              // mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    "https://img.freepik.com/foto-gratis/primer-plano-tabla-madera-estaca-carne-ballena-cocida-poco-comun-rodajas_346278-637.jpg?t=st=1724367435~exp=1724371035~hmac=48c531c134f2682d202b06bd75af7035d3bfd6300f7161043f392338334a8aa2&w=1060",
                    // fit: BoxFit.cover,
                    ),
                ),
                Container(
                  color: Colors.white70,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  height: 50,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.person_rounded),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Jane Doe",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      Text("1 hour ago"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white30,
                  height: 2,
                  width: 300,
                ),
                Container(
                  color: Colors.white70,
                  width: double.infinity,
                  // height: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: const Text(
                    "Sint eu incididunt cupidatat aliquip exercitation proident ex enim."
                    ),
                ),
                Container(
                  color: Colors.white70,
                  width: double.infinity,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.cake_outlined, color: Colors.lightBlue.shade400),
                          Text("Cake")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.mode_comment_outlined, color: Colors.lightBlue.shade400,),
                          Text("22 Coments")
                        ],
                      )
                    ],
                  ),
                ),                
            
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
                
              // mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    "https://img.freepik.com/foto-gratis/alimentos-pasta-generados-ai_23-2150664616.jpg?t=st=1724385888~exp=1724389488~hmac=f6dd68bfc84bc1c98377d91a5cf1d7f9657b3db0e3595b5432c903dcbe33964f&w=1380",
                    // fit: BoxFit.cover,
                    ),
                ),
                Container(
                  color: Colors.white70,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  height: 50,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.person_3),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Joe Doe",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      Text("2 hours ago"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white30,
                  height: 2,
                  width: 300,
                ),
                Container(
                  color: Colors.white70,
                  width: double.infinity,
                  // height: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: const Text(
                    "Est eu fugiat duis culpa officia aliquip anim do incididunt elit consequat laborum occaecat non. Dolor deserunt tempor ex sunt exercitation aute qui commodo Lorem. Ipsum qui consequat labore minim aliquip ipsum eiusmod ad sunt et laborum culpa non. Aute incididunt ut minim ad ea laborum pariatur sunt incididunt fugiat amet elit esse nulla."
                    ),
                ),
                Container(
                  color: Colors.white70,
                  width: double.infinity,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.cake_outlined, color: Colors.lightBlue.shade400),
                          Text("Cake")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.mode_comment_outlined, color: Colors.lightBlue.shade400),
                          Text("22 Coments")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Hola mundo!"),
                      action: SnackBarAction(
                        label: "Undo",
                        onPressed: (){}
                      ),
                    )
                  ); 
                }, 
                child:const Text("Press Me!"))
              ],
            )
          ]
          ),
        ),
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
