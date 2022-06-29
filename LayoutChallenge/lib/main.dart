import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
                child: Row(
              children: [
                Container(
                  width: 100.0,
                  color: Colors.red,
                )
              ],
            )),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.amberAccent,
                    ),
                  ),
                  Center(
                      child: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.green,
                  )),
                ],
              ),
            ),
            SafeArea(
              child: Row(
                children: [Container(width: 100.0, color: Colors.blue)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
