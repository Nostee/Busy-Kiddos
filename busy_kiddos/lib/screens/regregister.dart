import 'package:flutter/material.dart';

class BusyRegister extends StatefulWidget {
  @override
  _BusyRegisterState createState() => _BusyRegisterState();
}

class _BusyRegisterState extends State<BusyRegister> {
  String nameofchild;
  String age;
  String gender;
  String birthday;
  String guardian;
  String email;
  String password;

  final formKey = GlobalKey<FormState>();

  void pressme() {
    if (formKey.currentState.validate()) {
      print(nameofchild);
      print(age);
      print(gender);
      print(birthday);
      print(guardian);
      print(email);
      print(password);

      Navigator.pushNamed(context, "loaderRegister.dart", arguments: {
        "email": email,
        "password": password,
        "username": nameofchild,
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
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 200, 0),
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "loginlogin.dart", (route) => false);
                    },
                    icon: Icon(Icons.home),
                    label: Text("Back"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue[200],
                        textStyle: TextStyle(
                            fontSize: 20, fontFamily: 'LoveYaLikeASister')))),
            SizedBox(height: 20),
            Center(
              child: Text("REGISTER",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Boogaloo',
                      color: Colors.pink[700])),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Name of child:",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'LoveYaLikeASister',
                          color: Colors.red[400])),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (x) {
                      nameofchild = x;
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Age:",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'LoveYaLikeASister',
                          color: Colors.purple[600])),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (x) {
                      age = x;
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Gender:",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'LoveYaLikeASister',
                          color: Colors.green[600])),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (x) {
                      gender = x;
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Birthday:",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'LoveYaLikeASister',
                          color: Colors.blue[600])),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (x) {
                      birthday = x;
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Guardian:",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'LoveYaLikeASister',
                          color: Colors.brown[900])),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (x) {
                      guardian = x;
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Email:",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'LoveYaLikeASister',
                          color: Colors.orange[600])),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
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
                )),
              ],
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text("Password:",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'LoveYaLikeASister',
                        color: Colors.pink[600])),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10),
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
              )),
            ]),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    pressme();
                  },
                  child: Text("REGISTER"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[200],
                      textStyle: TextStyle(
                          fontSize: 20, fontFamily: 'LoveYaLikeASister')),
                ),
              ),
            ),
          ])),
    );
  }
}
