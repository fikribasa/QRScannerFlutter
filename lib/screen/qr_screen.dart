import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: Center(
          child: Container(
            width: width * 0.8,
            height: width * 0.8,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white60, width: 1)),
            child: MobileScanner(
                allowDuplicates: false,
                onDetect: (barcode, args) async {
                  final Uri? code = Uri.parse(barcode.rawValue!);
                  debugPrint('Barcode found! $code');
                  if (!await launchUrl(code!,
                      mode: LaunchMode.platformDefault)) {
                    throw 'Could not launch $code';
                  }
                }),
          ),
        ),
      ),
    );
  }
}
