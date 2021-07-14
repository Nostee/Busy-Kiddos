import 'package:flutter/material.dart';

class BusyLogin extends StatefulWidget {
  @override
  _BusyLoginState createState() => _BusyLoginState();
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

class _BusyLoginState extends State<BusyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
              child: Text("WELCOME",
                  style: TextStyle(
                      fontSize: 30, fontFamily: 'kidsfont', color: Colors.red)),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text("TO",
                style: TextStyle(
                    fontSize: 30, fontFamily: 'kidsfont', color: Colors.blue)),
          ),
          SizedBox(height: 20),
          Center(
            child: Text("BUSY KIDDOS!",
                style: TextStyle(
                    fontSize: 30, fontFamily: 'kidsfont', color: Colors.green)),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text("EMAIL:",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'kidsfont',
                        color: Colors.purple)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: TextFormField(
                    validator: (x) {
                      email = x;
                      return null;
                    },
                  ),
                ),
              )
            ],
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text("PASSWORD:",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'kidsfont',
                      color: Colors.amber)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: TextFormField(
                  validator: (x) {
                    password = x;
                    return null;
                  },
                  obscureText: true,
                ),
              ),
            )
          ]),
          Center(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("LOGIN"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink[200],
                      textStyle:
                          TextStyle(fontSize: 20, fontFamily: 'kidsfont')),
                )),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "regregister.dart");
                },
                child: Text("REGISTER"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple[400],
                    textStyle: TextStyle(fontSize: 20, fontFamily: 'kidsfont')),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
