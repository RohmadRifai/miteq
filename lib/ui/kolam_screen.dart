import 'package:flutter/material.dart';
import 'package:miteq/widgets/semua_kolam.dart';

class KolamScreen extends StatelessWidget {
  const KolamScreen({Key? key, required this.refresh}) : super(key: key);
  final VoidCallback refresh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Kolam Saya',
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
      body: SemuaKolam(refresh: refresh),
    );
  }
}
