// import 'package:accordion/accordion.dart';
// import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'nama.dart';

/// Main example page
class Bantuan extends StatelessWidget //__
{
  const Bantuan({Key? key}) : super(key: key);

  @override
  build(context) => Scaffold(
      // backgroundColor: Colors.blueGrey[100],
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Cara Penggunaan Aplikasi',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              '1. Melihat Daftar Anggota',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Untuk melihat Daftar Anggota Kelompok 3 dengan memilih menu Daftar Kelompok pada halaman utama.'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              '2. Melihat Hobby Anggota',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Untuk melihat Hobi dari masing-masing anggota kelompok yaitu dengan memilih menu Hobby pada halaman utama '),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              '3. Mengakses Kalkulator',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Untuk mengakses kalkulator, dapat dilakukan dengan 2 cara yaitu dengan memilih menu Kalkulator atau meng-klik tanda panah'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              '4. Menggunakan Stopwatch',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'a) Menghitung waktu maju dari nol',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('- Pada halaman utama, ketuk menu Stopwatch'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('- Ketuk Mulai'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'b) Mengoperasikan stopwatch yang berjalan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('- Untuk menjeda stopwatch yang berjalan, ketuk Pause'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('- Untuk menambahkan putaran saat stopwatch berjalan, ketuk logo bendera'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('- Untuk memulai stopwatch dari awal, ketuk Reset'),
          ),
        ],
      )
      );
} //__
