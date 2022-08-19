import 'package:flutter/material.dart';
import 'package:miteq/models/miteq_models.dart';

class MiteqScreen extends StatelessWidget {
  const MiteqScreen({Key? key, required this.miteqs}) : super(key: key);
  final Miteqs miteqs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          miteqs.namaMiteq,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Ringkasan',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const Text(
                            'PPM',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '${miteqs.ppm}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          const Text(
                            'PH',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '${miteqs.ph}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          const Text(
                            'Suhu',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '${miteqs.suhuAir}°C',
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Kualitas Air',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    miteqs.kualitasAir,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
