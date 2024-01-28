import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  int x = 0;
  int y = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lottery App',
            textAlign: TextAlign.center,
          ),
          backgroundColor: x == 5 ? Colors.green : Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 500,
              child: Center(
                  child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
              )),
              decoration: BoxDecoration(
                  color: x == 5 ? Colors.green : Colors.red,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(410), bottomRight: Radius.circular(410)),
                border: Border.all(color: Colors.grey, width: 2)
            ),
            ),

            SizedBox(
              height: 30,
            ),
            Text(
              'You have $y chances available',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                  fontSize: 28),
            ),
            Text(
              'Lottery Wining Number is 5',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 200,
                width: 320,
                color: x == 5 ? Colors.green : Colors.red,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: x == 5
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.done_all,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Congratulation You Have Won The Lottery\nYour Number $x Matched',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Better luck next time your number is $x \ntry again!',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(20);
            x++;
            y--;
            setState(() {});
          },
          child: const Icon(Icons.refresh, color: Colors.white),
        ),
      ),
    );
  }
}
