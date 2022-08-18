import 'package:flutter/material.dart';
import 'package:miteq/models/kolam_models.dart';
import 'package:miteq/ui/kolam_screen.dart';

class ListKolam extends StatefulWidget {
  const ListKolam({Key? key}) : super(key: key);

  @override
  _ListKolamState createState() => _ListKolamState();
}

class _ListKolamState extends State<ListKolam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Kolam Saya',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Laporan berkala kualitas air pada kolam',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          KolamScreen(refresh: () => setState(() {})),
                    )),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 190,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  Kolam kolam = kolams[index];
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
                                    kolam.kolamjenisLobster,
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
                                    kolam.masaBudidaya,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: LinearProgressIndicator(
                                    minHeight: 8,
                                    value: kolam.persentase,
                                    valueColor: AlwaysStoppedAnimation(
                                        Theme.of(context)
                                            .colorScheme
                                            .secondary),
                                    backgroundColor: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 1),
                              child: OutlinedButton(
                                onPressed: () => setState(() {
                                  kolams.removeAt(index);
                                }),
                                style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.red, width: 2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Text(
                                  'Delete',
                                  style: TextStyle(
                                    color: Colors.red.shade900,
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
          ),
        ],
      ),
    );
  }
}
