import 'package:flutter/material.dart';
import 'package:maquetado/screens/home.dart';
import 'package:maquetado/screens/profile.dart';
import 'package:maquetado/screens/search.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
int _selectIndex = 0;
  void _navigateBottom(int index){
    setState(() {
      _selectIndex = index;
    });
    
  }
  final List<Widget> _children = [
    const HomePage(),
    const SearchInsta(),
    const Text('HOla'),
    const Text('HOla'),
    const Profile()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _navigateBottom,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, size: 30),
              label: '',
            ),
          ],
        ),
    );
  }
}