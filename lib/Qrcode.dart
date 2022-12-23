
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({Key? key}) : super(key: key);

  @override
  State<MyCustomWidget> createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {

  var getResult = 'QR Code Result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Take Book'),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Color.fromARGB(255, 131, 135, 137),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                scanQRCode();
              },
              child: Text('Scan QR to take book'),
                  
            ),
            SizedBox(height: 20.0,),
            Text(getResult),
            
          ],
        )
      ),
    );
  }

  void scanQRCode() async {
    try{
      final qrCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR);

      if (!mounted) return;

      setState(() {
        getResult = qrCode;
      });
      print("QRCode_Result:--");
      print(qrCode);
      print("sucessfuly");
    } on PlatformException {
      getResult = 'Failed to scan QR Code.';
    }

  }

}