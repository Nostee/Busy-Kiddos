import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}


class _QuizState extends State<Quiz> {
  String email="";
  final formKey = GlobalKey<FormState>();
  String pass="";
  void pressMe(){
    if(formKey.currentState.validate()){
      print(email);
      print(pass);
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          key: formKey,
          child: ListView(
          
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
               padding: const EdgeInsets.fromLTRB(20,40,0,0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text("Email",
                   style: TextStyle(fontSize:30)),
                   Expanded(
                       child: TextFormField(
                         validator: (x){
                         email = x;
                         return null;
                         }
                     ),
                   )  
                 ],
              ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(20,30,0,0),
               child: Row(
                 children: [
                   Text("Password",
                   style: TextStyle(fontSize:30)),
                    Expanded(
                       child: TextFormField(
                         validator: (y){
                         pass = y;
                         return null;
                         }

                     ),
                   )             
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(170,30,20,0),
               child: Column(
              children: [
               TextButton(onPressed: () { pressMe(); },
               child:Text("LOGIN", 
               style: TextStyle(
                      color: Colors.black,
                      fontSize: 35
                    ),) )
//           TextButton(onPressed: (){transferScreen();}, child: Text("Debug Screen"))
// >>>>>>> e80546e4dc59cbe504d0745c5d892bc249cf490c
          ],
        ),
             )
          ]
               ),
      ),
           ); 
  }
  
  }
// WIDGET, PROPERTIES, OBJECTS
