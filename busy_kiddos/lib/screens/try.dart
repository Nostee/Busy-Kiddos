import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

String email;
String password;
final formKey = GlobalKey<FormState>();

void pressme() {
  if (formKey.currentState.validate()) {
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
        child: ListView(children: [
          SizedBox(height: 40),
          Center(
            child: Text("WELCOME", style: TextStyle(fontSize: 30)),
          ),
          SizedBox(height: 20),
          Center(
            child: Text("TO", style: TextStyle(fontSize: 30)),
          ),
          SizedBox(height: 20),
          Center(
            child: Text("BUSY KIDDOS", style: TextStyle(fontSize: 30)),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text("EMAIL:", style: TextStyle(fontSize: 20)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (x) {
                      email = x;
                      return null;
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text("PASSWORD:", style: TextStyle(fontSize: 20)),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  validator: (x) {
                    password = x;
                    return null;
                  },
                  obscureText: true),
            )),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(180, 0, 0, 0),
            child: TextButton(
                onPressed: () {
                  pressme();
                },
                child: Text("LOGIN")),
          )
        ]),
      ),
    );
  }
}
