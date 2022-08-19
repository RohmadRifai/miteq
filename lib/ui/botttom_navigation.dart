import 'package:flutter/material.dart';
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
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 550) {
              return currentTab[currentIndex];
            } else {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  navigationBarOnWeb(),
                  Flexible(child: currentTab[currentIndex])
                ],
              );
            }
          },
        ),
        bottomNavigationBar: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 550) {
              return navigationBarOnMobile();
            } else {
              return const SizedBox();
            }
          },
        ));
  }

  Widget navigationBarOnMobile() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => setState(() {
        currentIndex = index;
      }),
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
        )
      ],
    );
  }

  Widget navigationBarOnWeb() {
    return NavigationRail(
      selectedIndex: currentIndex,
      onDestinationSelected: (index) => setState(() {
        currentIndex = index;
      }),
      labelType: NavigationRailLabelType.all,
      selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      selectedLabelTextStyle: TextStyle(color: Theme.of(context).primaryColor),
      unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
      destinations: const [
        NavigationRailDestination(
            icon: Icon(Icons.home), label: Text('Beranda')),
        NavigationRailDestination(
            icon: Icon(Icons.layers), label: Text('Komoditas')),
        NavigationRailDestination(icon: Icon(Icons.work), label: Text('Miteq')),
      ],
    );
  }
}
