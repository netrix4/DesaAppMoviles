import 'package:flutter/material.dart';
import 'package:insta_clone/Controls/carousel_image_item.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(    
      // mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          color: Colors.white70,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person_3),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Joe Doe",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                        ),
                      ),
                      Text(
                        "Germany",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 8
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                onPressed: () {} ,
                icon: const Icon(Icons.more_horiz)),
            ],
          ),
        ),
        Container(
          width: 350,
          height: 350,
          color: Colors.amber,
          child: SizedBox(
            height: 350,
            child: CarouselView(
              
              itemSnapping: true,
              padding: const EdgeInsets.all(0),
                backgroundColor: Colors.white,
                itemExtent: 350,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
                children: const [
                  CarouselPostImage(
                    imagePath: 'assets/images/Paisa1.jpg',
                  ),
                  CarouselPostImage(
                    imagePath: 'assets/images/Paisa2.png',
                  ),
                  CarouselPostImage(
                    imagePath: 'assets/images/Paisa3.png',
                  ),
                ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          // width: 400,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton (
                    onPressed: ()=>{},
                    icon: const Icon (Icons.thumb_up_alt_outlined)),
                  IconButton(
                    onPressed: ()=>{}, 
                    icon: const Icon (Icons.add_comment_outlined)),
                  IconButton(
                    onPressed: ()=>{}, 
                    icon: const Icon(Icons.message_outlined, grade: .2,))
                ],
              ),
              Row(
                children:[
                  IconButton(
                    onPressed: () => {}, 
                    icon: const Icon(Icons.bookmark_border_outlined)),
                ]
              ),
            ],
          ),
        ),
      ],
    );
  }
}

