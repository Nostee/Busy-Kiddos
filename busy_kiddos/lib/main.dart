import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:busy_kiddos/loaders/loaderAuthenticate.dart';
import 'package:busy_kiddos/loaders/loaderLogin.dart';
import 'package:busy_kiddos/loaders/loaderRegister.dart';
import 'package:busy_kiddos/screens/home.dart';
import 'package:busy_kiddos/screens/login.dart';
import 'package:busy_kiddos/screens/register.dart';
//import 'package:busy_kiddos/screens/try.dart';
import 'package:busy_kiddos/services/authenticator.dart';
import 'package:provider/provider.dart';
import 'package:busy_kiddos/models/user.dart';
import 'package:busy_kiddos/screens/questionnaire.dart';
import 'package:busy_kiddos/screens/difficulty.dart';
import 'package:busy_kiddos/screens/homeFinal.dart';
import 'package:busy_kiddos/screens/loginlogin.dart';
import 'package:busy_kiddos/screens/regregister.dart';

void main() => runApp(Starter());

class Starter extends StatefulWidget {
  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return StreamProvider<UserLogin>.value(
        value: Authenticator().user,
        child: MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.black,
                accentColor: Colors.black87,
                cursorColor: Colors.black87,
                fontFamily: "RoundedElegance"),
            routes: {
              "/": (context) => LoaderAuthenticate(),
              "login.dart": (context) => Login(),
              "home.dart": (context) => Home(),
              "register.dart": (context) => Register(),
              "loaderRegister.dart": (context) => LoaderRegister(),
              "loaderLogin.dart": (context) => LoaderLogin(),
              "questionnaire.dart": (context) => Quiz(),
              "difficulty.dart": (context) => Difficulty(),
              "homeFinal.dart": (context) => FinalHome(),
              "loginlogin.dart": (context) => BusyLogin(),
              "regregister.dart": (context) => BusyRegister(),
            }));
  }
}
