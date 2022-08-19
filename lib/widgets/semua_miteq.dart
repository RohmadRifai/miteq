import 'package:flutter/material.dart';
import 'package:miteq/models/miteq_models.dart';
import 'package:miteq/ui/miteq_screen.dart';

class SemuaMiteq extends StatefulWidget {
  const SemuaMiteq({Key? key}) : super(key: key);

  @override
  _SemuaMiteqState createState() => _SemuaMiteqState();
}

class _SemuaMiteqState extends State<SemuaMiteq> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 550) {
          return mobile();
        } else {
          return web();
        }
      },
    );
  }

  Widget mobile() {
    return ListView.builder(
      itemCount: miteqs.length,
      itemBuilder: (BuildContext context, int index) {
        Miteqs miteq = miteqs[index];
        return Center(child: itemContainer(miteq));
      },
    );
  }

  Widget web() {
    return Wrap(children: miteqs.map((item) => itemContainer(item)).toList());
  }

  Widget itemContainer(Miteqs miteq) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MiteqScreen(
            miteqs: miteq,
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 160,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 6,
                )
              ], borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  height: 150,
                  width: 200,
                  image: AssetImage('assets/images/cara-budidaya-lobster.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              child: Container(
                  width: 200,
                  height: 160,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(miteq.namaMiteq,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            )),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            'PPM          ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            '${miteq.ppm}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              //fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            'pH                   ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            '${miteq.ph}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            'Suhu Air      ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            '${miteq.suhuAir}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
