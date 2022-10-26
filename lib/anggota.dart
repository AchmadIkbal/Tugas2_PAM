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
       backgroundColor: Color(0xFF4da9fa),
       body: SingleChildScrollView(
         child: Container(
           padding: EdgeInsets.all(50),
           child: Column(
             children: [
               Card(
                 shape: RoundedRectangleBorder(
                   side: BorderSide(
                     color: Colors.black,
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
                         radius: 110.0,
                         backgroundColor: Colors.transparent,
                         backgroundImage: AssetImage('assets/ikbal1.jpeg'),
                       ),
                       SizedBox(height: 15),
                       Text("Achmad Ikbal Rizkytama",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       ),
                       Text("124200019",
                         style: TextStyle(
                           fontSize: 18,
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               Card(
                 shape: RoundedRectangleBorder(
                   side: BorderSide(
                     color: Colors.black,
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
                         radius: 110.0,
                         backgroundColor: Colors.transparent,
                         backgroundImage: AssetImage('assets/fidel.jpeg'),
                       ),
                       SizedBox(height: 15),
                       Text("Aloisius Fidelis Bimasanjaya",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       ),
                       Text("124200021",
                         style: TextStyle(
                           fontSize: 18,
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               Card(
                 shape: RoundedRectangleBorder(
                   side: BorderSide(
                     color: Colors.black,
                   ),
                   borderRadius: BorderRadius.circular(25.0),
                 ),
                 child: Container(
                   alignment: Alignment.center,
                   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(
                         radius: 110.0,
                         backgroundColor: Colors.transparent,
                         backgroundImage: AssetImage('assets/arighi1.jpeg'),
                       ),
                       SizedBox(height: 15),
                       Text("Virgiawan Arighi",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       ),
                       Text("124200019",
                         style: TextStyle(
                           fontSize: 18,
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
 