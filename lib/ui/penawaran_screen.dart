import 'package:flutter/material.dart';
import 'package:miteq/widgets/semua_penawaran.dart';

class PenawaranScreen extends StatelessWidget {
  const PenawaranScreen({Key? key, required this.refresh}) : super(key: key);
  final VoidCallback refresh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Penawaran kepada Anda',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SemuaPenawaran(refresh: refresh),
    );
  }
}
