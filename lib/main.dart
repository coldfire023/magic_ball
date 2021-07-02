import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallApp());

class BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ball App',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: TrueApp(),
      ),
    );
  }
}

class TrueApp extends StatefulWidget {
  @override
  _TrueAppState createState() => _TrueAppState();
}

class _TrueAppState extends State<TrueApp> {
  var ball = 1;

  void ballApp() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: Image.asset('asset/images/ball$ball.png'),
            onPressed: () {
              ballApp();
            },
          ),
        ],
      ),
    );
  }
}
