import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:text_adventures/widgets/loadingText.dart';
import 'package:provider/provider.dart';
import 'package:text_adventures/models/user.dart';

// this is the first loading screen that shows up to determine if the user is logged in or not

class LoaderAuthenticate extends StatefulWidget {
  @override
  _LoaderAuthenticateState createState() => _LoaderAuthenticateState();
}

class _LoaderAuthenticateState extends State<LoaderAuthenticate> {
  dynamic user;
  Future<void> changeScreen() async
  {
    try
    {
      await Future.delayed(Duration(seconds: 3),() {
		  if(user==null)
      {
        Navigator.pushReplacementNamed(context, "login.dart");
      }
      else
      {
        Navigator.pushReplacementNamed(context, "home.dart");
    }
		});
    }
    catch(e)
    {

    }
  }

  @override
  Widget build(BuildContext context) {
    user = Provider.of<UserLogin>(context);
    print("(loaderAuthenticate.dart)Fetched data of UserLogin provider: $user"); // debug
    if(user!=null)
    {
      print("(loaderAuthenticate.dart)Current UID: ${user.uid}"); // debug
    }
    changeScreen();
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: SpinKitCubeGrid(
              color: Colors.white,
              size: 100.0,        
              )
            ),
            Center(
              child: SizedBox(height:40)
            ),
            Center(
              child: LoadingText()
            ),
        ],)
      );
  }
}