import 'package:flutter/material.dart';
import 'package:miteq/ui/akun.dart';
import 'package:miteq/ui/beranda.dart';
import 'package:miteq/ui/komoditas.dart';
import 'package:miteq/ui/miteq.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var currentTab = [
    const Beranda(),
    const Komoditas(),
    const Miteq(),
    const Text('Supply'),
    const Akun(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage('assets/logo/logo.png'),
          width: 130,
          height: 50,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: currentTab[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Komoditas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Miteq',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: 'Supply',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
