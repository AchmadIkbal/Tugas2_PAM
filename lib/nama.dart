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
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    menu(),
    Bantuan(),
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
        title: Text("Pemrograman aplikasi mobile",
        style: TextStyle(
            fontWeight: FontWeight.bold
        )
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body: Container(
        child: _widgetOptions[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepOrangeAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Bantuan',
            backgroundColor: Colors.blueAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}