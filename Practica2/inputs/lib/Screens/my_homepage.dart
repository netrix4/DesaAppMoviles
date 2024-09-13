import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario'),
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_back_ios_new)
          ),
          backgroundColor: Colors.grey.shade50,
      ),
      body: ListView(
        // margin: const  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        // color: Colors.blueGrey.shade50 ,
        children: [
          Container(
            decoration: BoxDecoration(
              // color: Colors.blueGrey.shade50 ,
              color: const Color.fromRGBO(219, 237, 249, 1) ,
              borderRadius: BorderRadius.circular(20)
            ),
            padding: const  EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: const Column(
              
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "First Name",
                    prefixIcon: Icon(Icons.person_outline),
                    helperText: "Required",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid)
                    )
                  )
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Last Name",
                    prefixIcon: Icon(Icons.person_outline),
                    helperText: "Required",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid)
                    )
                  )
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "E-mail",
                    prefixIcon: Icon(Icons.email_outlined),
                    helperText: "Required",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid)
                    )
                  )
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownMenu(
                  initialSelection: 1,
                  width: 320,
                  menuStyle: MenuStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
                    
                  ),
                  label: Text("Marriage"),
                  leadingIcon: Icon(Icons.home_outlined),
                  inputDecorationTheme: InputDecorationTheme(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid)
                    )
                  ),
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 'married', label: 'Married'),
                    DropdownMenuEntry(value: 'single', label: 'Single'),
                    DropdownMenuEntry(value: 'widow', label: 'Widow'),
                  ]
                )
              ],
            ),
            
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(77, 110, 134, 1)),
                shape:  WidgetStateProperty.all(const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
              ),
              onPressed: () {},
              child: const Text("Submit", style: TextStyle(color: Colors.white,)),
            )
          )
        ],
      ),
    );
  }
}