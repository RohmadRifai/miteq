import 'package:flutter/material.dart';
import 'package:miteq/models/kolam_models.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SemuaKolam extends StatefulWidget {
  const SemuaKolam({Key? key}) : super(key: key);

  @override
  _SemuaKolamState createState() => _SemuaKolamState();
}

class _SemuaKolamState extends State<SemuaKolam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: SizedBox(
        height: double.infinity,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: kolams.length,
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
                          LinearPercentIndicator(
                            width: 200,
                            lineHeight: 8,
                            percent: kolam.persentase,
                            progressColor: Colors.blue,
                            //backgroundColor: Colors.white,
                            padding: const EdgeInsets.only(left: 5),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1),
                        child: OutlinedButton(
                          onPressed: () => print('Tekan Detail'),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  width: 2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Text(
                            'Detail',
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
