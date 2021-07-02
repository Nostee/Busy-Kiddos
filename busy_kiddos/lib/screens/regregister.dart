import 'package:flutter/material.dart';

class BusyRegister extends StatefulWidget {
  @override
  _BusyRegisterState createState() => _BusyRegisterState();
}

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
  }
}

class _BusyRegisterState extends State<BusyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formKey,
          child: ListView(children: [
            SizedBox(height: 40),
            Expanded(
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 220, 0),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "loginlogin.dart", (route) => false);
                        },
                        icon: Icon(Icons.home),
                        label: Text("Back"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue[200],
                            textStyle: TextStyle(fontSize: 20)))),
              ),
            ),
            Center(
              child: Text("REGISTER",
                  style: TextStyle(
                    fontSize: 30,
                  )),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Name of child:",
                      style: TextStyle(fontSize: 20, color: Colors.red[400])),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(validator: (x) {
                          nameofchild = x;
                          return null;
                        })))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Age:",
                      style:
                          TextStyle(fontSize: 20, color: Colors.purple[600])),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(validator: (x) {
                          age = x;
                          return null;
                        })))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Gender:",
                      style: TextStyle(fontSize: 20, color: Colors.green[600])),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(validator: (x) {
                          gender = x;
                          return null;
                        })))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Birthday:",
                      style: TextStyle(fontSize: 20, color: Colors.blue[600])),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(validator: (x) {
                          birthday = x;
                          return null;
                        })))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Guardian:",
                      style:
                          TextStyle(fontSize: 20, color: Colors.yellow[600])),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(validator: (x) {
                          guardian = x;
                          return null;
                        })))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Email:",
                      style:
                          TextStyle(fontSize: 20, color: Colors.orange[600])),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(validator: (x) {
                          email = x;
                          return null;
                        })))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Password:",
                      style: TextStyle(fontSize: 20, color: Colors.pink[600])),
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
                ))
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("REGISTER"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[200],
                      textStyle: TextStyle(fontSize: 20)),
                ),
              ),
            ),
          ])),
    );
  }
}
