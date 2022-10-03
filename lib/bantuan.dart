// import 'package:accordion/accordion.dart';
// import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'nama.dart';

/// Main example page
class AccordionPage extends StatelessWidget //__
    {
  const AccordionPage({Key? key}) : super(key: key);

  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _penggunaan =
  '''Pada bagian ini akan dijelaskan petunjuk penggunaan aplikasi Cara memasuki website :
1. Bukalah sistem aplikasi melalui web browser
2. Maka akan menampilkan halaman login
3. Wajib mengisikan username dan password untuk berhasil login''';

  final _halamanutama = '''1. Akan ditampilkan 4 menu di halaman utama website
2. Pilih menu sesuai yang Anda inginkan
3. Menu pertama adalah Daftar Anggota yang akan menampilkan nama, nim, dan foto dari yang bersangkutan
4. Menu kedua adalah Aplikasi Stopwatch yang digunakan untuk menghitung waktu, terdapat pilihan start, pause, dan end
5. Menu ketiga adalah Daftar hobby yang akan menampilkan hobby dari setiap anggota dengan melalui sebuah gambar
6. Menu keempat adalah menu logout, jika Anda telah selesai menjelajahi isi website, silakan logout dan Anda akan diarahkan ke menu login''';

  @override
  build(context) => Scaffold(
    backgroundColor: Colors.blueGrey[100],
    body: Text("Ini Kolom Bantuan")
    // Accordion(
    //   maxOpenSections: 2,
    //   headerBackgroundColorOpened: Colors.black54,
    //   openAndCloseAnimation: true,
    //   headerPadding:
    //   const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
    //   sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
    //   sectionClosingHapticFeedback: SectionHapticFeedback.light,
    //   children: [
    //     AccordionSection(
    //       isOpen: true,
    //       leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
    //       headerBackgroundColorOpened: Colors.red,
    //       header: Text('Cara Penggunaan Aplikasi', style: _headerStyle),
    //       content: Text(_penggunaan, style: _contentStyle),
    //       contentHorizontalPadding: 20,
    //       contentBorderWidth: 1,
    //     ),
    //     AccordionSection(
    //       isOpen: false,
    //       leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
    //       header: Text('Penjelasan Halaman Utama', style: _headerStyle),
    //       content: Text(_halamanutama, style: _contentStyle),
    //       contentBorderColor: const Color(0xffffffff),
    //       headerBackgroundColorOpened: Colors.amber,
    //       contentHorizontalPadding: 20,
    //       contentBorderWidth: 1,
    //     ),
    //   ],
    // ),
  );
} //__