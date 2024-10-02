import 'package:flutter/material.dart';
import 'package:maquetado/screens/home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white70,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text("Username"),
              Icon(Icons.arrow_drop_down),
              Icon(Icons.menu)
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(''),
                    radius: 50,
                  ),
                ),
                SizedBox(width: 60,),
                Column(
                  children: [
                    Text('33'),
                    Text('Post')
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text('152'),
                    Text('Followers')
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text('37'),
                    Text('Following')
                  ],
                ),

              ],
            ),
            Row(
              children: [
                Container(
                  child: Padding(
                      padding: EdgeInsets.only(left:15),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Text("Your name", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Description", style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Bio", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("www.website.com", style: TextStyle(color: Colors.blue,),),
                            ],
                          ),
                        ],
                      ),
                    ),
                )
              ]
            ),
            Row(
              children: [
                SizedBox(width: 60,),
                TextButton(onPressed: (){}, child: Text('Following')),
                SizedBox(width: 65,),
                TextButton(onPressed: (){}, child: Text('Message')),
                SizedBox(width: 30,),
                TextButton(onPressed: (){}, child: Icon(Icons.arrow_drop_down)),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Story(),
                      Story(),
                      Story(),
                    ],
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey
                )
              ),
              child: const Row(
                children: [
                  SizedBox(width: 80),
                  Icon(
                    Icons.grid_on_sharp, 
                    size: 40,
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(
                    Icons.account_box,
                    size: 40,
                  )
                ],
              ),
              // Container
              // SizedBox(height: 20)
            ),
            Container(
              height: 500,
              child: Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 3.0,
                    mainAxisSpacing: 3.0
                  ),
                  itemCount: 20, 
                  // itemBuilder: Context, index{
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200
                        ),
                      );
                  }
                )
              ),

            )
          ],
        )
       
      ),
    );
  }
}