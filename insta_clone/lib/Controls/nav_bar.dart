import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 50,
      indicatorColor: const Color.fromARGB(255, 245, 245, 245),
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      
      destinations:const [
        NavigationDestination(
          
          label: 'Home',
          icon: Icon(Icons.home_filled),
        ),
        NavigationDestination(
          label: 'Search',
          icon: Icon(Icons.search),
    
        ),
        NavigationDestination(
          label: 'Add',
          icon: Icon(Icons.history_edu_outlined)
        ),
        NavigationDestination(
          label: 'Like',
          icon: Icon(Icons.heart_broken)
        ),
        NavigationDestination(
          label: "Profile",
          icon: Icon(Icons.person_rounded)
        ),
      ],
    );
  }
}
