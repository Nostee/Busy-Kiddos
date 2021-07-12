import 'package:flutter/material.dart';
import 'package:busy_kiddos/screens/questionnaire.dart';

String diff= "";

class Difficulty extends StatefulWidget {
  @override
  _DifficultyState createState() => _DifficultyState();
}
void answerSub(){
}
void english(){
  print("English");
}
void math(){
  print("Math");
}
void science(){
  print("Science");
}
class _DifficultyState extends State<Difficulty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          //child: [
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed:  (){Navigator.pushNamedAndRemoveUntil(context, "homeFinal.dart",(route) => false);},
                        child: Text("BACK"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        textStyle: TextStyle(
                          fontSize: 20
                        )
                      )   
                      )
                  ),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                        child: ElevatedButton(
                          onPressed:  (){Navigator.pushNamed( context, "questionnaire.dart");diff ="Easy";},child: Text("EASY"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          textStyle: TextStyle(
                            fontSize: 40
                          )
                        )   
                        )
                    ),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: ElevatedButton(
                          onPressed:  (){Navigator.pushNamed( context, "questionnaire.dart"); diff="Medium";},child: Text("MEDIUM"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          textStyle: TextStyle(
                            fontSize: 40
                          )
                        )   
                        )
                    ),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: ElevatedButton(
                          onPressed:  (){ Navigator.pushNamed( context, "questionnaire.dart"); diff="Hard"; },child: Text("HARD"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan,
                          textStyle: TextStyle(
                            fontSize: 40
                          )
                        )   
                        )
                    ),
                  ]
    ),
              ),
            ],
      ),
      )
    );
  }
}