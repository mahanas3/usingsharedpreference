import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Center(
                child: Text(
              'HOME PAGE',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            )),
          )
        ],
      ),
    );
  }
}
