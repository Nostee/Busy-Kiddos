import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

String email;
String password;
final formKey = GlobalKey<FormState>();

void pressme(){
  if(formKey.currentState.validate()){
    print(email);
    print(password);
  }
}



class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            SizedBox(height:40),
            Center(child: Text("WELCOME",
              style: TextStyle(
                fontSize: 40
               )
             ),
            ),
            SizedBox(height:40),
            Center(child: Text("TO",
              style: TextStyle(
                fontSize: 40
                ) 
              )
            ),
            SizedBox(height:40),
            Center(child: Text("BUSY KIDDOS",
              style: TextStyle(
                fontSize: 40
                )
              ),
            ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Text("email: ",
                style: TextStyle(
                  fontSize: 20
                ),
                ),
                ),
                Expanded(child:Padding(
                  padding: const EdgeInsets.fromLTRB(40, 15, 20, 0),
                  child: TextFormField(
                    validator: (x){
                      email = x;
                      return null;
                    },
                  )
                  ), 
                ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                child: Text("password: ",
                style: TextStyle(
                  fontSize: 20
                ),
                ),
              ),
              Expanded(child:Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: TextFormField(
                    validator: (y){
                      password = y;
                      return null;
                    },
                    obscureText: true,
                  ),
                  ),
               ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(300, 0, 20, 0),
                child: TextButton(
                  onPressed:  (){pressme();},
                  child: Text("LOGIN")
      
                ),
      
              )
            ],
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(135, 50, 0, 50),
              child: Text("Sample",
              style: TextStyle(
                fontSize: 40
                )
              ),
              ),
              ),
            
            Row(
              children: [
                Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.mail),
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// WIDGET, PROPERTIES, OBJECTS
