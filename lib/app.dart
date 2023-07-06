import 'package:flutter/material.dart';
import 'modules/statefulApp.dart';

class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first app",
      home: Scaffold(
        body:StatefulApp(),
      ),
    );
  }
}
