import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children :[ 
          Padding(
            padding: const EdgeInsets.fromLTRB(0,50,0,0),
            child: Center(child: Text("Welcome ",
            style: TextStyle(
              fontSize: 50
            ),)),
          ),
          Padding(
          padding: const EdgeInsets.fromLTRB(0,10,0,0),
            child: Center(child: Text("to ",
            style: TextStyle(
              fontSize: 50
            ),)),
          ),
          Padding(
          padding: const EdgeInsets.fromLTRB(0,10,0,0),
            child: Center(child: Text("Busy Kiddos ",
            style: TextStyle(
              fontSize: 50
            ),)),
          ),
           Padding(
             padding: const EdgeInsets.all(40.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Email",
                 style: TextStyle(
                   fontSize: 20)),
               ],
             ),
           ),
          //SizedBox(width: 100),
          Text("B"),
          //SizedBox(width: 100),
          Text("C"),
        ],
      )
        
    );
  }
}