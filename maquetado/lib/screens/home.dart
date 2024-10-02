import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title: const SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.camera_alt_outlined, size: 30),
                Text(
                  'Instagram',
                  style: TextStyle(fontSize: 30),
                ),
                Icon(Icons.send, size: 30),
              ],
            ),
          ),
        ),
        body: Column(
          
          children: [
            // Sección de historias
            Container(
              height: 120, // Altura de la fila de historias
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                
                scrollDirection: Axis.horizontal,
                children: const [
                 Story(),
                 Story(),
                 Story(),
                 Story(),
                 Story(),
                 Story(),
                 Story(),
                 
                ],
              ),
            ),
            SizedBox(
            
              height: 680,
              child: 
               ListView(
              scrollDirection: Axis.vertical,
              children: const [
                PostFeed(),
                PostFeed(),
                PostFeed(),
                PostFeed()
              ],
            )
            ),
           
            
            
           
          ],
        ),

        // Barra de navegación inferior
        
      );
      
    
  }
}

class PostFeed extends StatelessWidget {
  const PostFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container(
      padding: const EdgeInsets.all(10.0),
      height: 100,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 25,
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const Text('Username',style: TextStyle(fontWeight: FontWeight.bold),),
                Text(
                  'Place, City, Country',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_horiz,
            size: 35,
          ),
        ],
      ),
      ),
    
      // Imagen de la publicación
      SizedBox(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/img/fondo1.png', fit: BoxFit.fill),
          
        ],
      ),
      ),
    
      // Fila de iconos (Me gusta, comentar, compartir, guardar)
      Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0), // Espaciado interno
    
      height: 70,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.favorite_border, size: 35),
          SizedBox(width: 16),
          Icon(Icons.mode_comment_outlined,size: 35),
          SizedBox(width: 16),
          Icon(Icons.send,size: 35,),
          SizedBox(width: 77),
          Icon(Icons.more_horiz, size: 30, color: Colors.blue),
          Spacer(),
          Icon(Icons.bookmark_border, size: 35),
        ],
      ),
      ),
      ],
    );
  }
}

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        
        
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 35,
            ),
            
            SizedBox(height: 5),
            Text("Your Story"),
          ],
          
      
        
      ),
    );
    
  }
}