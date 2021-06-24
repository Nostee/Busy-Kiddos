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

  void signOut()
  {
    dynamic check = Authenticator().signOut();
    print("(home.dart)The data in the dynamic check is: $check"); // debug
    if(check!=null)
    {
      Navigator.pushReplacementNamed(context, "login.dart");
    }
    else{
      print("(home.dart)Logout failed."); // debug
    }
  }

<<<<<<< HEAD
  void transferScreen(){
  
    print("asdf");
=======
  void transferScreen()
  {
    print("Gumagana siya.");
>>>>>>> 4aa651fa9fc6b68f249dbcf15a133c248f0a0717
    Navigator.pushNamed(context,"try.dart");
  }
  
  @override
  Widget build(BuildContext context) {
    return toggle == true ? Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "HOME CAMP",
          style: TextStyle(
            letterSpacing: 6
          )
          ),
        actions: <Widget>[
          FlatButton(onPressed: (){signOut();}, 
          child: Text(
            "SIGN OUT",
            style: TextStyle(
              color: Colors.white
              )
            )
            )
        ],
      ),
      body: Column(
        children: [
<<<<<<< HEAD
          TextButton(onPressed: (){transferScreen();}, child: Text("Debug button"))
        ],
      ),
=======
          TextButton(onPressed: (){transferScreen();}, child: Text("Debug Screen"))
        ],
      )
>>>>>>> 4aa651fa9fc6b68f249dbcf15a133c248f0a0717
    ) : SetupCharacter();
  }

  text(String s) {}
}