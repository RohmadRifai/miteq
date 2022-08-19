import 'package:flutter/material.dart';
import 'package:miteq/models/komoditas_models.dart';
import 'package:miteq/ui/komoditas_screen.dart';

class SemuaKomoditas extends StatefulWidget {
  const SemuaKomoditas({Key? key}) : super(key: key);

  @override
  _SemuaKomoditasState createState() => _SemuaKomoditasState();
}

class _SemuaKomoditasState extends State<SemuaKomoditas> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 550) {
              return mobile();
            } else {
              return web();
            }
          },
        ));
  }

  Widget mobile() {
    return ListView.builder(
      itemCount: komoditas.length,
      itemBuilder: (BuildContext context, int index) {
        Komoditass komoditass = komoditas[index];
        return itemContainer(komoditass);
      },
    );
  }

  Widget web() {
    return SingleChildScrollView(
      child: Center(
        child: Wrap(
          children:
              komoditas.map((komoditass) => itemContainer(komoditass)).toList(),
        ),
      ),
    );
  }

  Widget itemContainer(Komoditass komoditass) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => KomoditasScreen(
            komoditass: komoditass,
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 270,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              bottom: 15,
              child: Container(
                width: 300,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        komoditass.namaLobster,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6,
                  )
                ],
              ),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 180,
                      width: 280,
                      image: AssetImage(komoditass.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
