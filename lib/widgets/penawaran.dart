import 'package:flutter/material.dart';
import 'package:miteq/models/supply_models.dart';
import 'package:miteq/ui/penawaran_screen.dart';

class PenawaranSupply extends StatefulWidget {
  const PenawaranSupply({Key? key}) : super(key: key);
  @override
  _PenawaranSupplyState createState() => _PenawaranSupplyState();
}

class _PenawaranSupplyState extends State<PenawaranSupply> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Penawaran kepada Anda',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'KLIK SUPPLY untuk konfirmasi kesediaan men-supply',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              if (width <= 660)
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          PenawaranScreen(refresh: () => setState(() {})),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                )
            ],
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth <= 550) {
                return mobile();
              } else {
                return web();
              }
            },
          )
        ],
      ),
    );
  }

  Widget mobile() {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          Supply supply = supplies[index];
          return SizedBox(
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Text(
                            supply.jenisLobster,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Text(
                            supply.berat,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Text(
                          supply.tanggal,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: OutlinedButton(
                        onPressed: () => setState(() {
                          supplies.removeAt(index);
                        }),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Theme.of(context).colorScheme.secondary,
                                width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          'Supply',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget web() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: supplies.length,
        itemBuilder: (context, index) {
          Supply supply = supplies[index];
          return Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 1,
                    child: Center(
                      child: Text(supply.jenisLobster,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(children: [
                      Text(supply.berat,
                          style: const TextStyle(color: Colors.white)),
                      const SizedBox(height: 5),
                      Text(supply.tanggal,
                          style: const TextStyle(color: Colors.white))
                    ]),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () => setState(() {
                        supplies.removeAt(index);
                      }),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: const BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        'Supply',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
