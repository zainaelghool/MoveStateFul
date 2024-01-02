//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 177, 148, 112),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 67, 118, 108),
          title: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.emoji_objects,
                      size: 30.0,
                      color: Color.fromARGB(255, 248, 250, 229),
                    ),
                  ),
                  TextSpan(
                    text: 'Find out for yourself',
                    style: TextStyle(
                      fontFamily: 'SourceSerif4',
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 248, 250, 229),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          centerTitle: true,
          // centerTitle: true,
        ),
        body: const Imagefind(),
      ),
    ),
  );
}

class Imagefind extends StatefulWidget {
  const Imagefind({super.key});
  @override
  State<Imagefind> createState() => _ImagefindState();
}

class _ImagefindState extends State<Imagefind> {
  int centerimge = 1;
  void changeText() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                centerimge = 2;
                changeText();
              });
            },
            child: Image.asset('images/image-$centerimge.jpg'),
          ),
        ),
        centerimge == 2
            ? const Card(
                color: Color.fromARGB(255, 67, 118, 108),
                margin: EdgeInsets.all(19.0),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name:Zeina Fathi Al-Ghoul ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 250, 229),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          color: Color.fromARGB(255, 248, 250, 229),
                        ),
                      ),
                      Text(
                        'Nationality:Libyan',
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 250, 229),
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          color: Color.fromARGB(255, 248, 250, 229),
                        ),
                      ),
                      Text(
                        'NumberID:5181002',
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 250, 229),
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          color: Color.fromARGB(255, 248, 250, 229),
                        ),
                      ),
                      Text(
                        'date of birth:2000',
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 250, 229),
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          color: Color.fromARGB(255, 248, 250, 229),
                        ),
                      ),
                      Text(
                        'Semester:Eighth',
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 250, 229),
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          color: Color.fromARGB(255, 248, 250, 229),
                        ),
                      ),
                      Text(
                        'Specialization: Information Technology',
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 250, 229),
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : const Card(
                margin: EdgeInsets.all(90.0),
                color: Color.fromARGB(255, 67, 118, 108),
                child: Center(
                  child: Text(
                    'Find out who I am ?',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 248, 250, 229),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
