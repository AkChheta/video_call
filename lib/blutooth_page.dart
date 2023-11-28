// ignore_for_file: avoid_print, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class MyBluetoothApp extends StatefulWidget {
  @override
  _MyBluetoothAppState createState() => _MyBluetoothAppState();
}

class _MyBluetoothAppState extends State<MyBluetoothApp> {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  List<BluetoothDevice> devices = [];

  @override
  void initState() {
    super.initState();
    startScan();
  }

  void startScan() {
    flutterBlue.scanResults.listen((List<ScanResult> results) {
      setState(() {
        devices = results.map((result) => result.device).toList();
      });
    });
    flutterBlue.startScan();
  }

  @override
  void dispose() {
    flutterBlue.stopScan();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth Devices'),
      ),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(devices[index].name),
            subtitle: Text(devices[index].id.toString()),
            onTap: () {
              // Implement the action you want when a device is tapped
              print('Tapped on ${devices[index].name}');
            },
          );
        },
      ),
    );
  }
}
