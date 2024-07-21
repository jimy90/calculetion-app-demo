import 'package:flutter/material.dart';
import 'package:khata_book/eentries_page.dart';
import 'package:khata_book/repoart_page.dart';
import 'package:khata_book/setting_page.dart';

class EntriesPage extends StatefulWidget {
  const EntriesPage({super.key});

  @override
  State<EntriesPage> createState() => _EntriesPageState();
}

class _EntriesPageState extends State<EntriesPage> {
  int _selectedindex = 0;
  final  tabs=[
    Center(child: EEntriesPage()),
Center(child: ReportPage(),),
Center(child: SettingPage(),)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body: tabs[_selectedindex],
    bottomNavigationBar: BottomNavigationBar(
        currentIndex:_selectedindex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),label: 'Cashbook' , ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_rounded),label: 'Report', ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting',),
        ],
        
        selectedItemColor: Color.fromARGB(255, 27, 73, 240),
        backgroundColor: Color.fromARGB(255, 230, 223, 223),
        unselectedItemColor: const Color.fromARGB(255, 62, 59, 59),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
      ),
  );
    
  }
}

