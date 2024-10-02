import 'package:flutter/material.dart';

class SearchInsta extends StatefulWidget {
  const SearchInsta({super.key});

  @override
  State<SearchInsta> createState() => _SearchInstaState();
}

class _SearchInstaState extends State<SearchInsta> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0,left: 8),
            child: Column(
              children: [
                // Barra de búsqueda
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(Icons.search, color: Colors.grey),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                   const Icon(Icons.qr_code_2,color: Colors.grey,)
                  
                  ],
                ),
                const SizedBox(height: 20),

                // ListView horizontal
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: const Center(child: Text('IGTV',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: const Center(child: Text('Shop',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: const Center(child: Text('Science & Tech',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: const Center(child: Text('TV & movie',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: const Center(child: Text('Games',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
               Expanded(
              
              child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                crossAxisSpacing: 3.0, 
                mainAxisSpacing: 3.0, 
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    
                   
                    
                  ),
                );
              },
              )
               )
                

              ],
            ),

          ),
           
        ),
       
      ),
    );
  }
}