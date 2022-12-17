// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //declare the home widget which is what the app runs first
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My Business Card App'),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.teal,
        //wrap the content inside the body in a safe area
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/me-modified.png'),
              ),
              Text(
                'Seye Cole',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'World Class Flutter Developer',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 55.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+44 742 528 1379',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 55.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'mroluseye@gmail.com',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 55.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.teal.shade900,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 55.0,
                    ),
                    Icon(
                      Icons.download,
                      color: Colors.teal.shade900,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.small(
          onPressed: null,
          backgroundColor: Colors.teal.shade900,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
