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
          body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://i.kym-cdn.com/entries/icons/original/000/036/019/American_Psycho_-_Walking_on_Sunshine_0-18_screenshot.png'),
                  ),
                  Text(
                    "Patrick BATEMAN",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Psycho',
                    ),
                  ),
                  Text(
                    "Vice President",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[900],
                      fontFamily: 'Kekw',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '242 555 6453',
                        style: TextStyle(
                            fontFamily: 'Psycho',
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'american@psycho.com',
                        style: TextStyle(
                            fontFamily: 'Psycho',
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ]),
          )),
    );
  }
}
