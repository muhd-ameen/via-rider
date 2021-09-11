import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataHome extends StatefulWidget {
  const DataHome({Key? key}) : super(key: key);

  @override
  _DataHomeState createState() => _DataHomeState();
}

class _DataHomeState extends State<DataHome> {
  final items = List<String>.generate(15, (i) => "${i + 1}");

  bool isDelivered = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Colors.grey[200]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Bucket ID : 984716',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[700],
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/homec1.png',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Items to Deliver : 24',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey[600],
                                      fontSize: 16),
                                ),
                                Text(
                                  'Items to Collect : 10',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey[700],
                                      fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/images/homec.svg',
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            'Orders',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.grey[700],
                fontSize: 20),
          ),
          LimitedBox(
            maxHeight: 470,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Color(0xFFF6F6F6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '${items[index]} Muhd Ameen',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[700],
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 100,
                              height: 45,
                              child: Text(
                                'Sreeragam Westhill, Calicut 8995959959',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey[700],
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            FlatButton.icon(
                              color:isDelivered==false ? Color(0xFFFF8800):Color(0xFF2EAE42),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              onPressed: () {
                                setState(() {
                                  if(isDelivered == false){
                                    isDelivered= true;
                                  }else {
                                    isDelivered = false;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.verified_outlined,
                                color: Colors.white,
                              ),
                              label: Text(
                                '${isDelivered == false ? 'Mark Delivery ' : 'Delivered'}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Package ID: ${items[index]}8545622${items[index]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[700],
                                  fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                  //
                  // ListTile(
                  // title: Text(items[index]),
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
