import 'package:flutter/material.dart';

// 1. Titik awal aplikasi berjalan
void main() {
  runApp(const MyApp());
}

// 2. Widget induk aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: RichTextWidget())),
    );
  }
}

// 3. Widget kustom (RichText) seperti pada tugas pertemuan Anda
class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Halo Saya Baru Belajar, ',
        style: TextStyle(color: Colors.black, fontSize: 22),
        children: <TextSpan>[
          TextSpan(
            text: 'Flutter!',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
