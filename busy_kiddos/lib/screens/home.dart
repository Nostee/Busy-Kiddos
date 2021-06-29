import 'package:flutter/material.dart';
import 'package:busy_kiddos/services/authenticator.dart';
import 'package:busy_kiddos/widgets/setupCharacter.dart';

// this is the home interface

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // temporary
  bool toggle = true;

  void signOut() {
    dynamic check = Authenticator().signOut();
    print("(home.dart)The data in the dynamic check is: $check"); // debug
    if (check != null) {
      Navigator.pushReplacementNamed(context, "login.dart");
    } else {
      print("(home.dart)Logout failed."); // debug
    }
  }

  void transferScreen() {
    print("Gumagana siya.");
  }

  @override
  Widget build(BuildContext context) {
    return toggle == true
        ? Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("HOME CAMP", style: TextStyle(letterSpacing: 6)),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      signOut();
                    },
                    child:
                        Text("SIGN OUT", style: TextStyle(color: Colors.white)))
              ],
            ),
            body: Column(
              children: [
                TextButton(
                    onPressed: () {
                      transferScreen();
                    },
                    child: Text("Debug Screen"))
              ],
            ))
        : SetupCharacter();
  }
}
