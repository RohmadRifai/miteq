import 'package:flutter/material.dart';
import 'package:miteq/ui/botttom_navigation.dart';

class LoginDaftar extends StatefulWidget {
  const LoginDaftar({Key? key}) : super(key: key);

  @override
  _LoginDaftarState createState() => _LoginDaftarState();
}

class _LoginDaftarState extends State<LoginDaftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Daftar',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(hintText: 'Nama'),
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Kata Sandi'),
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'No. Handphone'),
              ),
              const SizedBox(
                height: 300,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation())),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.secondary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    'Daftar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
