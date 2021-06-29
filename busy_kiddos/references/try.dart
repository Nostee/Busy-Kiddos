import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  String email;
  String password;
  final formKey = GlobalKey<FormState>();


  void pressedButton(){
    if(formKey.currentState.validate())
    {
      print("PRESSED ME");
      print(email);
      print(password);
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            SizedBox(height:50),
            Center(child: Text("WELCOME",
              style: TextStyle(
                fontSize: 40
              )
            )),
            Center(child: Text("TO",
              style: TextStyle(
                fontSize: 40
              )
            )),
            Center(child: Text("BUSY KIDDOS",
              style: TextStyle(
                fontSize: 40
              )
            )),
            SizedBox(height:50),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                children: [
                  Text("Email: ",
                    style: TextStyle(
                      fontSize: 20
                    )
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: TextFormField(
                      validator: (val){
                        email = val;
                        return null;
                      },
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                children: [
                  Text("Password: ",
                    style: TextStyle(
                      fontSize: 20
                    )
                  ),
                  Expanded(child: TextFormField(
                    validator: (val){
                        password = val;
                        return null;
                      },
                  )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 0, 30, 0),
                  child: TextButton(onPressed: (){
                    pressedButton();
                  }, child: Text("LOGIN")),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

// WIDGET, PROPERTIES, OBJECTS