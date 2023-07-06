import 'package:flutter/material.dart';

class StatefulApp extends StatefulWidget {
  @override
  StatefulAppState createState() {
    return StatefulAppState();
  }
}

class StatefulAppState extends State<StatefulApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 100),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = counter + 1;
                });
              },
              child: Text("Start"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(color: Colors.amber),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: Text("Reset"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(color: Colors.red),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
