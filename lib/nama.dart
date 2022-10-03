import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas1/anggota.dart';
import 'package:tugas1/calcu.dart';
import 'package:tugas1/login_screen.dart';
import 'package:tugas1/menu.dart';
import 'package:tugas1/stopwatch.dart';
import 'login_screen.dart';
import 'menu.dart';
import 'hobby.dart';
import 'bantuan.dart';
import 'dart:ui';

class MyStatefulWidget extends StatefulWidget {
  static String tag = 'navbar-page';
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    menu(),
    AccordionPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemrograman aplikasi mobile"),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const calcu();
            }),
          );
        },
        child: const Icon(Icons.arrow_right_alt),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Bantuan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}