import 'package:flutter/material.dart';
import 'package:tugas1/anggota.dart';
import 'login_screen.dart';
import 'nama.dart';
import 'menu.dart';
import 'login.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Apakah Anda Yakin ? ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return  LoginPageFul();
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
                      'Ya',
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
                          return MyStatefulWidget();
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
                      'Tidak',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),


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
