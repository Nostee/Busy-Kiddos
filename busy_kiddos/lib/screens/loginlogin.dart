import 'package:flutter/material.dart';

class BusyLogin extends StatefulWidget {
  @override
  _BusyLoginState createState() => _BusyLoginState();
}

class _BusyLoginState extends State<BusyLogin> {
  String email;
  String password;
  final formKey = GlobalKey<FormState>();

  void pressme() {
    if (formKey.currentState.validate()) {
      print(email);
      print(password);
      Navigator.pushReplacementNamed(context, "loaderLogin.dart", arguments: {
        "email": email,
        "password": password,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Form(
        key: formKey,
        child: ListView(children: [
          SizedBox(height: 40),
          Center(
            child: Text("WELCOME",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'LoveYaLikeASister',
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 20),
          Center(
            child: Text("TO",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'LoveYaLikeASister',
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 20),
          Center(
              child: Text("BUSY KIDDOS",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'LoveYaLikeASister',
                      color: Colors.green,
                      fontWeight: FontWeight.bold))),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text("EMAIL:",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'LoveYaLikeASister',
                        color: Colors.purple)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: TextFormField(
                    validator: (x) {
                      email = x;
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text("PASSWORD:",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'LoveYaLikeASister',
                      color: Colors.amber)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: TextFormField(
                    validator: (x) {
                      password = x;
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: true),
              ),
            ),
          ]),
          Center(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    pressme();
                  },
                  child: Text("LOGIN"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink[200],
                      textStyle: TextStyle(
                          fontSize: 20, fontFamily: 'LoveYaLikeASister')),
                )),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "regregister.dart");
                },
                child: Text("REGISTER"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple[400],
                    textStyle: TextStyle(
                        fontSize: 20, fontFamily: 'LoveYaLikeASister')),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
