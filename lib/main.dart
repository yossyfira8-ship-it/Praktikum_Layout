import 'package:flutter/material.dart';

Widget titleSection = Container(
  padding: const EdgeInsets.all(16.0),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                'WISATA GUNUNG BROMO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Jawa Timur, indonesia',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Gunung Bromo adalah sebuah gunung berapi aktif di Jawa Timur yang menjadi ikon wisata Indonesia, berada di kawasan Taman Nasional Bromo Tengger Semeru; gunung ini tidak hanya memiliki nilai budaya yang kuat bagi masyarakat Suku Tengger, tetapi juga memperlihatkan keindahan alam yang luar biasa melalui lautan pasir luas, kawah yang mengepul dramatis, serta panorama matahari terbit di balik deretan pegunungan yang memukau sehingga menghadirkan pesona magis yang selalu memikat wisatawan dari dalam maupun luar negeri.',
    softWrap: true,
  ),
);
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter layout: Yossy Fira Rosdiana (362458302022)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GUNUNG BROMO'),
        ),
        
         body:ListView (
          children: [
            Image.asset(
              'assets/images/bromo.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection // Tambahkan di sini agar muncul di bawah titleSection
          ],
        ),
      ),
    )
    ;
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}