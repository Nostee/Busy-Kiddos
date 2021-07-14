import 'package:flutter/material.dart';
import 'package:busy_kiddos/screens/homeFinal.dart';
import 'package:busy_kiddos/screens/difficulty.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

void answerA(){
  print("A");
}

void answerB(){
  print("B");
}

void answerC(){
  print("C");
}

void answerD(){
  print("D");
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed:  (){Navigator.pushNamed( context, "difficulty.dart");},
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
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: ElevatedButton.icon(
                  onPressed: (){Navigator.pushNamed( context, "homeFinal.dart");}, 
                  icon: Icon(
                    Icons.home
                  ), 
                  label: Text("Home"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    textStyle: TextStyle(
                      fontSize: 20
                    )
                  )
                  ) 
                )
              ], 
            ),
         
          Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 80, 0, 0)),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                      child: Text("QUESTION #1",
                      style: TextStyle(
                        fontSize: 20,
                        
                        )
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(90, 20, 90, 50),
                      child: Text("WHAT IS 1 + 1 =",
                      style: TextStyle(
                        fontSize: 30
                        )
                      )
                    ),
                  ],
                ),
                
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                    child: ElevatedButton(
                      onPressed:  (){answerA();},
                      child: Text("SAMPLE A"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          textStyle: TextStyle(
                            fontSize: 20
                          )
                        )   
                    ),
      
                  ),
                  Expanded(
                      child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 40, 20, 0),
                      child: ElevatedButton(
                        onPressed:  (){answerB();},
                        child: Text("SAMPLE B"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          textStyle: TextStyle(
                            fontSize: 20
                          )
                        )   
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: ElevatedButton(
                      onPressed:  (){answerC();},
                      child: Text("SAMPLE C"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          textStyle: TextStyle(
                            fontSize: 20
                          )
                        )   
                    ),
      
                  ),
                  Expanded(
                      child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                      child: ElevatedButton(
                        onPressed:  (){answerD();},
                        child: Text("SAMPLE D"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue,
                          textStyle: TextStyle(
                            fontSize: 20
                          )
                        )   
                      ),
                    ),
                  ),
                  
                ],
              ),
            ElevatedButton(onPressed: (){
              print("Subject is: " + sub);
              print("Difficulty is: " + diff);
              }, child: Text("GET DATA")),

            ],
          ),




          ],
        )
      ),
    );
  }
}