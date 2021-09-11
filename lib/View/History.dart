import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<Map> myProducts =
      List.generate(20, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child:
              Text(
                'Buckets',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[700],
                    fontSize: 24),
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 4 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: myProducts.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 110,
                        height: 30,
                        child: Center(
                          child:
                          Text(
                            'ID : 987458$index',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF24334F),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      Text(
                        '24/4/$index Friday',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Delivered: 23',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Retries: 3',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Collected: 13',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  // Text(myProducts[index]["name"]),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
