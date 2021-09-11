import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

class QrScanScreen extends StatefulWidget {
  const QrScanScreen({Key? key}) : super(key: key);

  @override
  _QrScanScreenState createState() => _QrScanScreenState();
}

class _QrScanScreenState extends State<QrScanScreen> {
  ScanController controller = ScanController();
  String? qrcode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black54,
              width: 250, // custom wrap size
              height: 250,
              child: ScanView(
                controller: controller,
// custom scan area, if set to 1.0, will scan full area
                scanAreaScale: .7,
                scanLineColor: Colors.green.shade400,
                onCapture: (data) {
                  setState(() {
                    qrcode = data;
                  });
                  // do something
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Scanned Url : ${qrcode == null ? '' : qrcode}',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.grey[800]),
            ),
            SizedBox(height: 20),
            qrcode != null
                ? FlatButton.icon(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.verified_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      ' Fetch Data ',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.white),
                    ),
                  )
                : Container(),
            SizedBox(height: 20),
            FlatButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_outlined),
                label: Text('Cancel'))
          ],
        ),
      ),
    );
  }
}
