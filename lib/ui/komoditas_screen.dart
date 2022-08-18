import 'package:flutter/material.dart';
import 'package:miteq/models/komoditas_models.dart';

class KomoditasScreen extends StatefulWidget {
  const KomoditasScreen({Key? key, required this.komoditass}) : super(key: key);
  final Komoditass komoditass;

  @override
  _KomoditasScreenState createState() => _KomoditasScreenState();
}

class _KomoditasScreenState extends State<KomoditasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6),
                    ],
                  ),
                  child: Hero(
                    tag: widget.komoditass.imageUrl,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Image(
                        image: AssetImage(widget.komoditass.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
            Container(
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
                    widget.komoditass.namaLobster,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  Text(widget.komoditass.deskripsi),
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
                        '${widget.komoditass.lamaBudidaya}',
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
                        '${widget.komoditass.harga}',
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
            )
          ],
        ),
      ),
    );
  }
}
