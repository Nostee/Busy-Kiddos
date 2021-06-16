import 'package:flutter/material.dart';
import 'package:tutorial/screens/login.dart';

void main() => runApp(Starter());

class Starter extends StatefulWidget {
  const Starter({ Key? key }) : super(key: key);

  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => Login(),
      }, 
    );
  }
}

