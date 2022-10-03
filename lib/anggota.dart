import 'package:flutter/material.dart';
 class Anggota extends StatefulWidget {
   const Anggota({Key? key}) : super(key: key);
 
   @override
   State<Anggota> createState() => _AnggotaState();
 }
 
 class _AnggotaState extends State<Anggota> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Kelompok 3'),
       ),
       body: SingleChildScrollView(
         child: Container(
           padding: EdgeInsets.all(50),
           child: Column(
             children: [
               Card(
                 shape: RoundedRectangleBorder(
                   side: BorderSide(
                     color: Colors.lightBlue,
                   ),
                   borderRadius: BorderRadius.circular(25.0),
                 ),
                 child: Container(
                   alignment: Alignment.center,
                   padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(
                         radius: 90.0,
                         backgroundColor: Colors.transparent,
                         backgroundImage: AssetImage('assets/ikbal1.jpeg'),
                       ),
                       SizedBox(height: 15),
                       Text("Achmad Ikbal Rizkytama - 124200019",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               Card(
                 shape: RoundedRectangleBorder(
                   side: BorderSide(
                     color: Colors.lightBlue,
                   ),
                   borderRadius: BorderRadius.circular(25.0),
                 ),
                 child: Container(
                   alignment: Alignment.center,
                   padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(
                         radius: 90.0,
                         backgroundColor: Colors.transparent,
                         backgroundImage: AssetImage('assets/fidel.jpeg'),
                       ),
                       SizedBox(height: 15),
                       Text("Aloisius Fidelis Bimasanjaya - 124200021",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               Card(
                 shape: RoundedRectangleBorder(
                   side: BorderSide(
                     color: Colors.lightBlue,
                   ),
                   borderRadius: BorderRadius.circular(25.0),
                 ),
                 child: Container(
                   alignment: Alignment.center,
                   padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(
                         radius: 90.0,
                         backgroundColor: Colors.transparent,
                         backgroundImage: AssetImage('assets/arighi.jpeg'),
                       ),
                       SizedBox(height: 15),
                       Text("Virgiawan Arighi - 124200057",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ),
       ),
     );
   }
 }
 