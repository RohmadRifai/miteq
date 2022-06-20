import 'package:flutter/material.dart';
import 'package:miteq/widgets/semua_miteq.dart';

class Miteq extends StatelessWidget {
  const Miteq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SemuaMiteq(),
      ),
    );
  }
}
