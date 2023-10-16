import 'package:flutter/material.dart';
import 'package:flutter_project14/login.dart';

void main(){
  runApp(const Sharedpreference());
}
class Sharedpreference extends StatelessWidget {
  const Sharedpreference({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
