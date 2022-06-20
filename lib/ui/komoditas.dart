import 'package:flutter/material.dart';
import 'package:miteq/widgets/semua_komoditas.dart';

class Komoditas extends StatelessWidget {
  const Komoditas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SemuaKomoditas(),
      ),
    );
  }
}
