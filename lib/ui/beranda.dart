import 'package:flutter/material.dart';
import 'package:miteq/widgets/kolam.dart';
import 'package:miteq/widgets/penawaran.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          children: const <Widget>[
            PenawaranSupply(),
            ListKolam(),
          ],
        ),
      ),
    );
  }
}
