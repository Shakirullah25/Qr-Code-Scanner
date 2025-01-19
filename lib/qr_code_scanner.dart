// filepath: /c:/Users/User/frontendmentor_qr_code/lib/qr_code_scanner.dart
import 'package:flutter/material.dart';
import 'package:frontendmentor_qr_code/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeScanner extends StatelessWidget {
  const QrCodeScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.slate300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Center(
                        child: QrImageView(
                          backgroundColor: AppColors.blue,
                          foregroundColor: AppColors.white,
                          data:
                              'https://www.frontendmentor.io/home', // Replace with your data
                          version: QrVersions.auto,
                          size: 200.0,
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 10),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Improve your front-end skills by building projects",
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              color: AppColors.slate900,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Scan the QR code to visit Frontend Mentor and take your coding skills to the next level",
                            style: GoogleFonts.outfit(
                              fontSize: 15,
                              color: AppColors.slate500,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}


/*

QrImageView(
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white,
          data:
              'https://www.frontendmentor.io/home', // Replace with your data
          version: QrVersions.auto,
          size: 150.0,
        ),




import 'dart:io';

import 'package:flutter/material.dart';
import 'package:frontendmentor_qr_code/colors.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({super.key});

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: "Qr Code");
  Barcode? result;
  QRViewController? qrController;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrController!.pauseCamera();
    } else {
      qrController!.resumeCamera();
    }
  }

  @override
  void dispose() {
    qrController?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController qrController) {
    setState(() {
      this.qrController;
    });
    qrController.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.slate300,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey, 
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
            
            child: (result!= null) ? Text("Barcode Type: ${result!.format} Data: ${result!.code}") : Text("Scan the barcode"),
            ),
          ) 
      ],
      ),
    );
  }
}

*/