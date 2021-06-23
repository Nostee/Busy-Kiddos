import 'package:flutter/material.dart';

// this is the login interface

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool toggle = true;
  Map errorData;
  String error = "";

  void login()
  {
    if(formKey.currentState.validate())
    {
      Navigator.pushReplacementNamed(context, "loaderLogin.dart", arguments: {
      "email": email,
      "password": password,
      });
    }
    else
    {
      print("(login.dart)Login failed."); // debug
    }
  }

  Widget loginForm()
  {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: TextFormField(
                validator: (val) {
                  if(val=="")
                  {
                    return "Empty email.";
                  }
                  else
                  {
                    email = val;
                    return null;
                  }
                },
                decoration: InputDecoration(
                  filled : true,
                  fillColor: Colors.white70,
                  hintText: "Email",
                ),
                style: TextStyle(
                  fontSize: 25
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                    validator: (val) {
                      if(val=="")
                      {
                        return "Empty password.";
                      }
                      else
                      {
                        password = val;
                        return null;
                      }
                    },
                    obscureText: toggle,
                    decoration: InputDecoration( 
                      filled : true,
                      fillColor: Colors.white70,
                      hintText: "Password",
                    ),
                    style: TextStyle(
                      fontSize: 25
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if(toggle==true)
                    {
                      toggle=false;
                    }
                    else{
                      toggle=true;
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye),
                  color: Colors.black87,
                )
                ],
              )
            ),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.black,
                onPressed: () {
                  login();
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35
                  ),
                  )
                ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "register.dart");
                },
                child: Text(
                  "Don't have an account? Click me.",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15
                  ),
                  )
                )
            ],
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    errorData = ModalRoute.of(context).settings.arguments;
    if(errorData!=null)
    {
      error = errorData["error"];
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: <Widget>[
                Text(
                  "Build no. 6212021\nVersion 0.01 - Development Test",
                  style: TextStyle(
                    color: Colors.black87
                  ),
                  ),
                SizedBox(height: 70),
                Center(
                  child: Text(
                    "BUSY",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 70
                    ),
                    ),
                ),
                Center(
                  child: Text(
                    "KIDDOS",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 50
                    ),
                    ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "A fun learning platform for kids.",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17,
                      letterSpacing: 2,
                    ),
                    ),
                ),
                Center(
                  child: Text(
                    error,
                    style: TextStyle(
                      color: Colors.red
                    )
                    )
                ),
                SizedBox(height: 25),
                loginForm()
            ],
          ),
        ),
      )
    );
  }
}
