
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  var code = '';
  File? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(35),
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextFormField(
                    controller: title,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: ' Enter details ',
                    ),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.indigo,
                onPressed: () {
                  setState(() {
                    code = title.text;
                  });
                },
                child: const Text(
                  "Create",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              code == ''
                  ? const Text('')
                  : BarcodeWidget(
                barcode: Barcode.qrCode(
                  errorCorrectLevel: BarcodeQRCorrectionLevel.high,
                ),
                data: code,
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
