import 'package:flutter/material.dart';
import 'package:busy_kiddos/models/questionsheet.dart';
import 'package:busy_kiddos/screens/homeFinal.dart';
import 'package:busy_kiddos/screens/difficulty.dart';

class Quiz extends StatefulWidget {
  

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  dynamic questionContainer;
  dynamic answerContainer;
  int lengthOfQuestions;
  
  int score = 0;
  String option1 = "Sample A";
  String option2 = "Sample B";
  String option3 = "Sample C";
  String option4 = "Sample D";
  int questionNo = 1;
  String question = "Sample Question ???";

  @override
  void initState() {
    super.initState();
    print(sub);
    print(diff);
    if(sub=="Science")
    {
      questionContainer = QuestionSheet().questionsScience;
      answerContainer = QuestionSheet().answersScience;
      lengthOfQuestions = QuestionSheet().answersScience.length;
    }
    else if(sub=="Math")
    {
      questionContainer = QuestionSheet().questionsMath;
      answerContainer = QuestionSheet().answersMath;
      lengthOfQuestions = QuestionSheet().answersMath.length;
    }
    else if(sub=="English")
    {
      questionContainer = QuestionSheet().questionsEnglish;
      answerContainer = QuestionSheet().answersEnglish;
      lengthOfQuestions = QuestionSheet().answersEnglish.length;
    }
    print("STARTTT");
  }

  void answerA(ans){
    print(ans);
    checkAnswer(ans);
  }

  void answerB(ans){
    print(ans);
    checkAnswer(ans);
  }

  void answerC(ans){
    print(ans);
    checkAnswer(ans);
  }

  void answerD(ans){
    print(ans);
    checkAnswer(ans);
  }

  void checkAnswer(ans){
    if(ans==answerContainer[questionNo-1])
    {
      print("CORRECT");
      setState(() {
        score+=1;
      });
    }
    else{
      print("WRONG!");
    }
    setState(() {
      if(questionNo<lengthOfQuestions)
      {
        questionNo+=1;
      }
      else{
        print("done!");
        //TEMPORARY
        questionNo = 1;
        score = 0;
        // PUSHES THE SCREEN TO DISPLAY THE SCORE (pushandremove)
        // MERONG BUTTON NA "BACK TO HOMESCREEN"
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: Form(
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
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(
                                context, "homeFinal.dart", (route) => false);
                      }, 
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
                      Center(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                          child: Text("QUESTION #$questionNo",
                          style: TextStyle(
                            fontSize: 20,
                            
                            )
                          )
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Center(
                        child: Padding( 
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
                          child: Text("${questionContainer.keys.elementAt(questionNo-1)}",
                          style: TextStyle(
                            fontSize: 25
                            )
                          )
                        ),
                      ),
                      )
                      
                    ],
                  ),
                  
                ),

                SizedBox(height:40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed:  (){answerA(questionContainer[questionContainer.keys.elementAt(questionNo-1)][0]);},
                        child: Text("${questionContainer[questionContainer.keys.elementAt(questionNo-1)][0]}"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: TextStyle(
                              fontSize: 20
                            )
                          )   
                      ),
        
                    ),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                    child: ElevatedButton(
                      onPressed:  (){answerB(questionContainer[questionContainer.keys.elementAt(questionNo-1)][1]);},
                      child: Text("${questionContainer[questionContainer.keys.elementAt(questionNo-1)][1]}"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        textStyle: TextStyle(
                          fontSize: 20
                        )
                      )   
                    ),
                      )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed:  (){answerC(questionContainer[questionContainer.keys.elementAt(questionNo-1)][2]);},
                        child: Text("${questionContainer[questionContainer.keys.elementAt(questionNo-1)][2]}"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            textStyle: TextStyle(
                              fontSize: 20
                            )
                          )   
                      ),
        
                    ),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                    child: ElevatedButton(
                      onPressed:  (){answerD(questionContainer[questionContainer.keys.elementAt(questionNo-1)][3]);},
                      child: Text("${questionContainer[questionContainer.keys.elementAt(questionNo-1)][3]}"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                        textStyle: TextStyle(
                          fontSize: 20
                        )
                      )   
                    ),
                    ),
                  ],
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: 
                  [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,60,25,0),
                      child: Text("Score: $score",
                        style: TextStyle(
                          fontSize: 30
                        )
                      ),
                    )
                  ]
                ),
              ],
            ),
            ],
          )
        ),
      ),
    );
  }
}