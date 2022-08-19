import 'package:flutter/material.dart';
import 'package:miteq/models/komoditas_models.dart';

class KomoditasScreen extends StatelessWidget {
  const KomoditasScreen({Key? key, required this.komoditass}) : super(key: key);
  final Komoditass komoditass;

  @override
  Widget build(BuildContext context) {
    final heightMobile = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 550) {
            return mobile(heightMobile);
          } else {
            return web();
          }
        },
      )),
    );
  }

  Widget mobile(double height) {
    return Column(
      children: [image(height: height), description()],
    );
  }

  Widget web() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 550 && constraints.maxWidth <= 1100) {
          return Center(
            child: Column(
              children: [image(height: 400), description()],
            ),
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [image(height: 400), description()],
          );
        }
      },
    );
  }

  Widget image({required double height}) {
    return Stack(
      children: <Widget>[
        Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 2), blurRadius: 6),
            ],
          ),
          child: Hero(
            tag: komoditass.imageUrl,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Image(
                image: AssetImage(komoditass.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 550) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        )
      ],
    );
  }

  Widget description() {
    return Container(
      width: 320,
      height: 250,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            komoditass.namaLobster,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          Text(komoditass.deskripsi),
          Row(
            children: <Widget>[
              const Icon(
                Icons.av_timer,
                size: 18,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                '${komoditass.lamaBudidaya}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              const Text(
                'hari',
                style: TextStyle(
                  color: Colors.grey,
                  //fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 103,
              ),
              const Text(
                'Rp',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                '${komoditass.harga}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              const Text(
                '/ekor',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
