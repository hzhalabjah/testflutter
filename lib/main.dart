import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Chro'),
          ),
          drawer: Drawer(
            semanticLabel: 'HEAD',
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      'HEAD',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text(
                    'Lecture 1',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text(
                    'Lecture 2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.0, top: 20.0),
                  child: Text(
                    'Logout',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 23),
                    ),
                    onPressed: () {},
                    child: const Text('Text Button'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('Outlined Button');
                    },
                    child: const Text('Outlined Button',
                        style: const TextStyle(fontSize: 23)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: 500,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(8, 11),
                          blurRadius: 7,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Colors.yellow.withOpacity(0.9),
                                  offset: Offset(-11, 0),
                                  blurRadius: 2),
                            ]),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            left: BorderSide(color: Colors.black, width: 4),
                            bottom: BorderSide(color: Colors.black, width: 4),
                            top: BorderSide(color: Colors.black, width: 4),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 10,
                        child: Text(
                          "A",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 190,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        child: Center(
                          child: Text(
                            'C',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border(
                            right: BorderSide(color: Colors.black, width: 4),
                            bottom: BorderSide(color: Colors.black, width: 4),
                            top: BorderSide(color: Colors.black, width: 4),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        top: 10,
                        child: Text(
                          "B",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
