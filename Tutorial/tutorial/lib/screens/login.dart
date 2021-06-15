import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey<FormState>(); 
  String? email;
  String? password;

  void youPushedTheButton()
  {
    formKey.currentState?.validate();
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 25, 21),
          child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Email: "),
                    Expanded(child: TextFormField(
                      validator: (val) {
                        email = val;
                      }
                    ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text("Password: "),
                    Expanded(child: TextFormField(
                      validator: (val) {
                        password = val;
                      }
                    ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                    onPressed: () {
                      youPushedTheButton();
                    }, 
                    child: Text("LOGIN"),
                   ),
                   SizedBox(width: 50),
                  ]
                )
              ],
            ),
          )

        )
      ),
    );
  }
}