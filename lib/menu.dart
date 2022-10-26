import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas1/anggota.dart';
import 'package:tugas1/calcu.dart';
import 'package:tugas1/login_screen.dart';
import 'package:tugas1/logout.dart';
import 'package:tugas1/menu.dart';
import 'package:tugas1/stopwatch.dart';
import 'login_screen.dart';
import 'menu.dart';
import 'hobby.dart';
import 'bantuan.dart';
import 'dart:ui';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Menu :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return const Anggota();
                        }),);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // background
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold
                      ),
                      // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: const Text(
                      'Daftar Anggota',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                    width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return hobi();
                        }),);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // background
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold
                      ),
                      // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: const Text(
                      'Hobby',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context){
                            return const calcu();
                          }),);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // background
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold
                        ),
                        // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                      ),
                      child: const Text(
                        'Kalkulator',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return HomeApp();
                        }),);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // background
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold
                      ),
                      // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: const Text(
                      'Stopwatch',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return Logout();
                        }),);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // background
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold
                      ),
                      // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // SizedBox(height: 30),
                // const Text("Kelompok 3",
                //     style: TextStyle(
                //       fontSize: 40,
                //     )
                // ),
                // SizedBox(height: 10),
                // Image.asset('assets/ikbal.jpeg',
                //   width: 200,
                //   height: 200,
                //   fit: BoxFit.cover,
                // ),
                // SizedBox(height: 15),
                // const Text("Achmad Ikbal Rizkytama - 124200019",
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20,
                //   ),
                // ),
                // SizedBox(height: 15),
                // Image.asset('assets/fidel.jpeg',
                //   width: 200,
                //   height: 200,
                //   fit: BoxFit.cover,
                // ),
                // SizedBox(height: 15),
                // const Text("Aloisius Fidelis Bimasanjaya - 124200021",
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20,
                //   ),
                // ),
                // SizedBox(height: 20),
                // Image.asset('assets/arighi.jpeg',
                //   width: 200,
                //   height: 200,
                //   fit: BoxFit.cover,
                // ),
                // SizedBox(height: 15),
                // const Text("Virgiawan Arighi - 124200057",
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
