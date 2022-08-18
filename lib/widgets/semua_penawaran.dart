import 'package:flutter/material.dart';
import 'package:miteq/models/supply_models.dart';

class SemuaPenawaran extends StatefulWidget {
  const SemuaPenawaran({Key? key, required this.refresh}) : super(key: key);
  final VoidCallback refresh;

  @override
  _SemuaPenawaranState createState() => _SemuaPenawaranState();
}

class _SemuaPenawaranState extends State<SemuaPenawaran> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: SizedBox(
        height: double.infinity,
        child: ListView.builder(
          itemCount: supplies.length,
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
                            widget.refresh();
                          }),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
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
      ),
    );
  }
}
