import 'package:flutter/material.dart';
import 'package:petsgo/pages/profile_owner_page.dart';

import 'membership_page.dart';
import 'owner_page.dart';

class HomeButtonNavigationPage extends StatefulWidget {
  const HomeButtonNavigationPage({super.key});

  @override
  State<HomeButtonNavigationPage> createState() => _HomeButtonNavigationPageState();
}

class _HomeButtonNavigationPageState extends State<HomeButtonNavigationPage> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    OwnerPage(),
    MembershipPage(),
    ProfileOwnerPage()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paseo para mascotas'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Membresia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
